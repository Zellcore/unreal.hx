package unreal.editor;

extern class UEditorEngine_Extra {
  @:glueCppIncludes('Editor.h')
  @:global public static var GEditor:UEditorEngine;

  function SavePackage(inOuter:UPackage, base:UObject, topLevelFlags:EObjectFlags, filename:TCharStar):Bool;
}
