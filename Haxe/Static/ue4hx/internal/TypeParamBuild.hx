package ue4hx.internal;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

using StringTools;

class TypeParamBuild {
  public static function build():Type {
    switch (Context.getLocalType()) {
    case TInst(_, [typeToGen]):
      var pos = Context.currentPos();
      return ensureBuilt(typeToGen, pos, true); /* we allow incomplete here because this might be just a definition */
    case _:
      throw 'assert';
    }
  }

  public static function ensureBuilt(typeToGen:Type, pos:Position, allowIncomplete:Bool):Type {
    var ret = switch (Context.getType('ue4hx.internal.AnyTypeParam')) {
      case TAbstract(a,tl):
        TAbstract(a,[typeToGen]);
      case _:
        throw 'assert';
    }
    if (!isComplete(typeToGen, pos)) {
      if (allowIncomplete) {
        return ret;
      } else {
        throw new Error('The type $typeToGen cannot be used as a type parameter because it has type parameters itself, ' +
          'and this is not supported on Unreal Glue types', pos);
      }
    }

    var tconv = TypeConv.get(typeToGen, pos);
    var tparam = tconv.ueType.getTypeParamType();
    try {
      Context.getType( tparam.getClassPath() );
    }
    catch(e:Dynamic) {
      var msg = Std.string(e);
      if (msg.startsWith('Type not found')) {
        // type is not built. Build it!
        new TypeParamBuild(typeToGen, tconv, pos).createCpp();
      } else {
        neko.Lib.rethrow(e);
      }
    }
    return ret;
  }

  public static function isComplete(t:Type, pos:Position):Bool {
    return switch(Context.follow(t)) {
      case TInst(i, tl):
        switch(i.get().kind) {
        case KTypeParameter(_):
          false;
        case _:
          for (t in tl) {
            if (!isComplete(t, pos))
              return false;
          }
          true;
        }
      case TEnum(_,_):
        true;
      case TAbstract(_,tl):
        for (t in tl) {
          if (!isComplete(t, pos))
            return false;
        }
        true;
      case _:
        throw new Error('Unreal Glue: The type $t cannot be used as a type parameter!', pos);
    }
  }

  var typeToGen:Type;
  var tconv:TypeConv;
  var pos:Position;

  public function new(typeToGen, tconv, pos) {
    this.typeToGen = typeToGen;
    this.tconv = tconv;
    this.pos = pos;
  }

  public function createCpp():Void {
    if (this.tconv.isBasic) {
      // basic types are present on both hxcpp and UE, so
      // we don't need an intermediate glue type
      var glueType = this.tconv.haxeType;
      var haxeType = if (glueType.name.startsWith('Fake')) {
        new TypeRef(['cpp'], glueType.name.substr('Fake'.length));
      } else {
        glueType;
      }
      var glueTypeComplex = glueType.toComplexType(),
          haxeTypeComplex = haxeType.toComplexType();
      var cls = macro class {
        @:keep public static function haxeToUe(haxe:cpp.RawPointer<cpp.Void>):$haxeTypeComplex {
          var dyn:Dynamic = unreal.helpers.HaxeHelpers.pointerToDynamic(haxe);
          var real:$glueTypeComplex = dyn;
          return cast real;
        }

        @:keep public static function ueToHaxe(ue:$haxeTypeComplex):cpp.RawPointer<cpp.Void> {
          var glue:$glueTypeComplex = cast ue;
          var dyn:Dynamic = glue;
          return unreal.helpers.HaxeHelpers.dynamicToPointer(dyn);
        }
      };

      var tparam = this.tconv.ueType.getTypeParamType();
      cls.name = tparam.name;
      cls.pack = tparam.pack;
      var includeLocation = NativeGlueCode.haxeRuntimeDir.replace('\\','/') + '/Generated/TypeParam.h';

      var cppCode = new HelperBuf();
      var module = NativeGlueCode.module;
      cppCode += '#ifndef TypeParam_h_included__\n#include "$includeLocation"\n#endif\n';
      var hxType = this.tconv.haxeType.getCppType().toString();
      var cppName = tparam.getCppClass();

      cppCode += 'template<>\n$hxType TypeParam<$hxType>::haxeToUe(void *haxe) {\n';
        cppCode += '\treturn $cppName::haxeToUe(haxe);\n}\n';
      cppCode += 'template<>\nvoid *TypeParam<$hxType>::ueToHaxe($hxType ue) {\n';
        cppCode += '\treturn $cppName::ueToHaxe(ue);\n}\n';
      cls.meta = extractMeta(
        macro
          @:nativeGen
          // @:headerCode($v{'#ifndef TypeParam_h_included__\n#include "$includeLocation"\n#endif\n'})
          @:cppFileCode($v{cppCode.toString()})
          null
      );

      Context.defineType(cls);
    } else {
    }
  }

  private static function extractMeta(expr:Expr, ?meta:Metadata):Metadata {
    if (meta == null) meta = [];
    return switch(expr.expr) {
      case EMeta(m, e):
        meta.push(m);
        extractMeta(e,meta);
      case _:
        meta;
    }
  }
}
