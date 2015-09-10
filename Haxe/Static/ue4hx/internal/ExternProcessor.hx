package ue4hx.internal;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import sys.FileSystem;

using haxe.macro.Tools;

using StringTools;

class ExternProcessor {
  /**
    Processes the 'Externs' directories and creates Haxe wrappers based on them.
    This command should be run through `--macro` command-line option, and `--no-output` (so
    hxcpp doesn't try to build those files).
    The target directory will be the selected by `-cpp <target>` command-line option
   **/
  public static function process(classpaths:Array<String>, force:Bool) {
    // first, add the classpaths to the current compiler
    for (cp in classpaths) {
      Compiler.addClassPath(cp);
    }

    // we want to parse all
    if (!Context.defined('use_rtti_doc'))
      Compiler.define('use_rtti_doc');

    // walk into the paths - from last to first - and if needed, create the wrapper code
    var target = Compiler.getOutput();
    var processed = new Map(),
        toProcess = [];
    var i = classpaths.length;
    while( i --> 0 ) {
      var cp = classpaths[i];
      if (!FileSystem.exists(cp)) continue;
      var pack = [];
      function traverse() {
        var dir = cp + '/' + pack.join('/');
        for (file in FileSystem.readDirectory(dir)) {
          if (file.endsWith('.hx')) {
            var module = pack.join('.') + (pack.length == 0 ? '' : '.') + file.substr(0,-3);
            if (processed[module])
              continue; // already existed on a classpath with higher precedence
            processed[module] = true;

            var mtime = FileSystem.stat('$dir/$file').mtime;
            var dest = '$target/${pack.join('/')}/$file';
            if (FileSystem.exists(dest) && (force || FileSystem.stat(dest).mtime.getTime() >= mtime.getTime()))
              continue; // already in latest version
            toProcess.push(module);
          } else if (FileSystem.isDirectory('$dir/$file')) {
            pack.push(file);
            traverse();
            pack.pop();
          }
        }
      }
      traverse();
    }

    for (type in toProcess) {
      var module = Context.getModule(type);
      var pack = type.split('.'),
          name = pack.pop();

      var buf = new StringBuf();
      if (pack.length != 0)
        buf.add('package ${pack.join('.')};\n');
      var processor = new ExternProcessor(buf);
      for (type in module) {
        var glueBuf = processor.processType(type);
        if (glueBuf != null) {
          var glue = glueBuf.toString();
          var glueType = processor.glueType;
          trace(glue);
        }
      }
    }
  }

  private var buf:StringBuf;
  private var glue:StringBuf;
  private var glueType:TypeRef;
  private var thisConv:TypeConv;

  private var type:Type;
  private var typeRef:TypeRef;
  private var indentStr:String;

  private var pos:Position;

  @:isVar private var voidType(get,null):Null<TypeConv>;

  private function new(buf:StringBuf) {
    this.buf = buf;
    this.indentStr = '';
  }

  public function processType(type:Type):StringBuf {
    this.type = type;
    this.glue = new StringBuf();
    switch(type) {
    case TInst(c,tl):
      this.processClass(type, c.get());
    case TEnum(e,tl):
      this.processEnum(e.get());
    case _:
      var pos = switch(Context.follow(type)) {
      case TInst(c,tl): c.get().pos;
      case TEnum(e,tl): e.get().pos;
      case TAbstract(a,tl): a.get().pos;
      case TAnonymous(a): a.get().fields[0].pos;
      case _: return null;
      }
      this.pos = pos;
      Context.warning('Type $type is not supported',pos);
    }
    return glue;
  }

  private function processClass(type:Type, c:ClassType) {
    this.pos = c.pos;
    if (!c.isExtern || !c.meta.has(':uextern')) return;
    this.typeRef = TypeRef.fromBaseType(c, c.pos);
    this.glueType = this.typeRef.getGlueHelperType();
    this.thisConv = TypeConv.get(type,c.pos);

    this.addDoc(c.doc);
    this.addMeta(c.meta.get());
    if (c.isPrivate)
      this.buf.add('private ');
    this.buf.add('class ${c.name} ');
    this.begin('{');
    for (field in c.statics.get()) {
      processField(field,true);
    }
    for (field in c.fields.get()) {
      processField(field,false);
    }

    // add the wrap field
    this.buf.add('@:unreflective public static function wrap(ptr:');
    this.buf.add(this.thisConv.haxeGlueType.toString());
    this.buf.add('):' + this.thisConv.haxeType);
    this.begin(' {');
    if (!this.thisConv.haxeGlueType.isReflective()) {
      this.buf.add('var ptr = cpp.Pointer.fromRaw(cast ptr);');
      this.newline();
    }

    this.buf.add('if (ptr == null) return null;');
    this.newline();
    this.buf.add('return new ${this.typeRef.getRefName()}(ptr)');
    this.end('}');

    if (c.superClass == null) {
      this.newline();
      // add constructor
      this.buf.add('@:unreflective private var wrapped:${this.thisConv.haxeGlueType};');
      this.newline();
      if (this.thisConv.haxeGlueType.isReflective())
        this.buf.add('private function new(wrapped) this.wrapped = wrapped;');
      else
        this.buf.add('private function new(wrapped:${this.thisConv.haxeGlueType.toReflective()}) this.wrapped = wrapped.rawCast();');
    }

    this.end('}');
    trace(buf);
  }

  private function processField(field:ClassField, isStatic:Bool) {
    this.addDoc(field.doc);
    this.addMeta(field.meta.get());

    var uename = switch(extract(field.meta, ':uename')[0]) {
      case null:
        field.name;
      case name:
        name;
    };

    var methods = [];
    switch(field.kind) {
    case FVar(read,write):
      if (field.isPublic)
        this.buf.add('public ');
      else
        this.buf.add('private ');

      if (isStatic)
        this.buf.add('static ');
      var tconv = TypeConv.get( field.type, field.pos );
      this.buf.add('var ');
      this.buf.add(field.name);
      this.buf.add('(');
      switch(read) {
      case AccNormal | AccCall:
        methods.push({
          name: 'get_' + field.name,
          uename: uename,
          args: [],
          ret: tconv,
          isProp: true, isFinal: true, isPublic: false
        });
        this.buf.add('get,');
      case _:
        this.buf.add('never,');
      }
      switch(write) {
      case AccNormal | AccCall:
        methods.push({
          name: 'set_' + field.name,
          uename: uename,
          args: [{ name: 'value', t: tconv }],
          ret: tconv,
          isProp: true, isFinal: true, isPublic: false
        });
        this.buf.add('set);');
      case _:
        this.buf.add('never);');
      }
    case FMethod(k):
      switch(Context.follow(field.type)) {
      case TFun(args,ret):
        methods.push({
          name: field.name,
          uename: uename,
          args: [ for (arg in args) { name: arg.name, t: TypeConv.get(arg.t, field.pos) } ],
          ret: TypeConv.get(ret, field.pos),
          isProp: false, isFinal: false, isPublic: field.isPublic
        });
      case _: throw 'assert';
      }
    }

    for (meth in methods) {
      var helperArgs = meth.args.copy();
      if (!isStatic)
        helperArgs.unshift({ name: 'this', t: this.thisConv });
      var isSetter = meth.isProp && meth.name.startsWith('set_');
      var glueRet = if (isSetter) {
        voidType;
      } else {
        meth.ret;
      }
      this.glue.add('public static function ${meth.name}(');
      this.glue.add([ for (arg in helperArgs) escapeName(arg.name) + ':' + arg.t.haxeGlueType.toString() ].join(', '));
      this.glue.add('):' + glueRet.haxeGlueType + ';\n');

      if (meth.isPublic)
        this.buf.add('public ');
      else
        this.buf.add('private ');
      if (isStatic)
        this.buf.add('static ');

      this.buf.add('function ${meth.name}(');
      this.buf.add([ for (arg in meth.args) arg.name + ':' + arg.t.haxeType.toString() ].join(', '));
      this.buf.add('):' + meth.ret.haxeType + ' ');
      this.begin('{');
      var haxeBody =
        '${this.glueType}.${meth.name}(' +
          [ for (arg in helperArgs) arg.t.haxeToGlue(arg.name) ].join(', ') +
        ')';
      if (isSetter)
        haxeBody = haxeBody + ';\n${this.indentStr}return value';
      else if (!glueRet.haxeType.isVoid())
        haxeBody = 'return ' + meth.ret.glueToHaxe(haxeBody);
      this.buf.add(haxeBody);
      this.buf.add(';');
      this.end('}');
    }
  }

  private static function escapeName(name:String) {
    return switch(name) {
      case 'this':
        'self';
      case _:
        name;
    };
  }

  private function processEnum(e:EnumType) {
    this.pos = e.pos;
  }

  private function addMeta(metas:Metadata) {
    if (metas != null) {
      for (meta in metas) {
        this.buf.add('@' + meta.name);
        if (meta.params != null && meta.params.length > 0) {
          this.buf.add('(');
          var first = true;
          for (param in meta.params) {
            if (first) first = false; else this.buf.add(', ');
            this.buf.add(param.toString());
          }
          this.buf.add(')');
        }
        this.newline();
      }
    }
  }

  private function addDoc(doc:Null<String>) {
    if (doc != null) {
      buf.add('/**');
      buf.add(doc);
      buf.add('**/\n');
      buf.add(indentStr);
    }
  }

  private function begin(?brkt:String) {
    if (brkt != null) {
      buf.add(brkt);
      buf.add('\n');
      buf.add(indentStr += '  ');
    } else {
      indentStr += '  ';
    }
  }

  private function end(?brkt:String) {
    indentStr = indentStr.substr(2);
    if (brkt != null) {
      this.newline();
      buf.add(brkt);
      this.newline();
    }
  }

  private function newline() {
    buf.add('\n');
    buf.add(indentStr);
  }


  private static function extract(meta:MetaAccess, name:String):Array<String> {
    var meta = meta.extract(name);
    if (meta == null || meta.length == 0 || meta[0].params == null || meta[0].params.length == 0)
      return [];
    var ret = [];
    for (param in meta[0].params) {
      switch(param.expr) {
        case EConst(CString(s)):
          ret.push(s);
        case _:
          throw 'assert';
      }
    }
    return ret;
  }

  private function get_voidType():TypeConv {
    if (this.voidType == null)
      this.voidType = TypeConv.get(Context.getType('Void'), this.pos);
    return this.voidType;
  }
}
