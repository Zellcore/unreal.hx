package unreal;

@:glueCppIncludes("ModuleManager.h")
@:noCopy @:noEquals @:uextern extern class FModuleManager {
  static function GetModuleChecked<T>(name:Const<FName>):PRef<T>;
  static function LoadModulePtr<T>(name:Const<FName>):PPtr<T>;
}
