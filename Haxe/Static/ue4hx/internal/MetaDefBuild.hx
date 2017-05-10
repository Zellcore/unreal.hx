package ue4hx.internal;
import ue4hx.internal.meta.Metadata;

import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

class MetaDefBuild {

  public static function addUClassMetaDef(base:ClassType) {
    var classDef:UClassDef = null;
    var superStructName = null;
    if (base.superClass != null) {
      var superClass = base.superClass.t.get();
      superStructName = MacroHelpers.getUName(superClass);
    }
    classDef = {
      uname: MacroHelpers.getUName(base),
      uprops: [],
      superStructUName: superStructName,

      metas:MacroHelpers.extractMetaDef(base.meta, ':uclass'),

      isClass:base.meta.has(":uclass"),
    };
    if (classDef.uname == null) {
      classDef.uname = base.name;
    }

    for (field in base.fields.get()) {
      if (field.meta.has(':uproperty') && field.kind.match(FVar(_))) {
        var prop = TypeConv.get(field.type, field.pos).toUPropertyDef();
        if (prop == null) {
          Context.warning('This field (${field.name}) is marked as a uproperty but its type is not supported. It will be ignored', field.pos);
          continue;
        }
        prop.uname = MacroHelpers.getUName(field);
        if (field.meta.has(':ureplicate')) {
          var repl:UPropReplicationKind = Always;
          var kind = MacroHelpers.extractStrings(field.meta, ':ureplicate')[0];
          if (kind != null) {
            switch(kind.toLowerCase()) {
            case 'initialonly':
              repl = InitialOnly;
            case 'owneronly':
              repl = OwnerOnly;
            case 'skipowner':
              repl = SkipOwner;
            case 'simulatedonly':
              repl = SimulatedOnly;
            case 'autonomousonly':
              repl = AutonomousOnly;
            case 'simulatedorphysics':
              repl = SimulatedOrPhysics;
            case 'initialorowner':
              repl = InitialOrOwner;
            case _:
              prop.customReplicationName = kind;
            }
          }
          prop.replication = repl;
        }
        classDef.uprops.push(prop);
        var metas = MacroHelpers.extractMetaDef(field.meta, ':uproperty');
        if (metas.length != 0) {
          prop.metas = metas;
        }
      } else if (field.meta.has(':ufunction') && field.kind.match(FMethod(_))) {
        switch(Context.follow(field.type)) {
        case TFun(args,ret):
          var func:UFunctionDef = {
            uname: MacroHelpers.getUName(field),
            args:[],
            ret:null,
          };
          var supported = true;
          for (arg in args) {
            var prop = TypeConv.get(arg.t, field.pos).toUPropertyDef();
            if (prop == null) {
              Context.warning('The type of field ${field.name}\'s argument called ${arg.name} is not supported. This ufunction will be ignored', field.pos);
              supported = false;
              break;
            }
            prop.uname = arg.name;
            func.args.push(prop);
          }

          if (!supported) {
            continue;
          }

          var retProp = TypeConv.get(ret, field.pos).toUPropertyDef();
          if (retProp == null) {
            if (!TypeRef.fromType(ret, field.pos).isVoid()) {
              Context.warning('The return type of field ${field.name} is not supported. This ufunction will be ignored', field.pos);
              continue;
            }
          }
          func.ret = retProp;

          var metas = MacroHelpers.extractMetaDef(field.meta, ':ufunction');
          if (metas.length != 0) {
            func.metas = metas;
          }
          if (classDef.ufuncs == null) {
            classDef.ufuncs = [];
          }
          classDef.ufuncs.push(func);
        case _:
          throw new Error('assert', field.pos);
        }
      }
    }
    var propSignature = Context.signature(classDef.uprops);
    var crc = haxe.crypto.Crc32.make(haxe.io.Bytes.ofString(propSignature));
    if (crc == 0) {
      crc = 1; // don't let it be 0
    }
    classDef.propCrc = crc;

    var meta:ue4hx.internal.meta.Metadata = { uclass:classDef, signature: Context.signature(classDef) };
    Globals.cur.allClassDefs[classDef.uname] = { className:TypeRef.fromBaseType(base, base.pos).withoutModule().toString(), meta:meta };

    base.meta.add('UMetaDef', [Context.makeExpr(meta, base.pos)], base.pos);
  }

  public static function writeStaticDefs() {
    var map = Globals.cur.staticUTypes;
    var arr = [ for (val in map) val ];

    switch(Context.getType('uhx.meta.StaticMetaData')) {
    case TInst(c,_):
      var c = c.get();
      c.meta.remove('UTypes');
      c.meta.add('UTypes', [for (val in map) macro $v{val}], Context.currentPos());
    case _:
      Context.warning('Invalid type for StaticMetaData', Context.currentPos());
    }
  }

  public static function writeClassDefs() {
    var outputDir = haxe.io.Path.directory(Compiler.getOutput());
    var file = sys.io.File.write(outputDir + '/gameCrcs.data', true);
    var map = Globals.cur.allClassDefs;
    var arr = [];

    for (key in map.keys()) {
      var entry = map[key];
      var meta = entry.meta;
      if (meta.uclass != null && meta.uclass.propCrc != null) {
        arr.push({ haxeClass:entry.className, uclass:meta.uclass.uname });
        if (key.length > 255) {
          Context.warning('UClass key ${key} exceeds 255 characters', Context.currentPos());
          continue;
        }

        file.writeInt8(key.length);
        file.writeString(key);
        file.writeInt32(meta.uclass.propCrc);
      }
    }
    file.writeInt8(0);
    file.close();

    switch(Context.getType('uhx.meta.CppiaMetaData')) {
    case TInst(c,_):
      var c = c.get();
      c.meta.remove('DynamicClasses');
      c.meta.add('DynamicClasses', [for (v in arr) macro $v{v}], Context.currentPos());
    case _:
      Context.warning('Invalid type for CppiaMetaData', Context.currentPos());
    }
  }

}
