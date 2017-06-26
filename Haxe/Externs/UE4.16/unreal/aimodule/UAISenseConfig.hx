/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _   _ __   __ 
   * | | | | | | |\ \ / / 
   * | | | | |_| | \ V /  
   * | | | |  _  | /   \  
   * | |_| | | | |/ /^\ \ 
   *  \___/\_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Perception/AISenseConfig.h")
@:uextern @:uclass extern class UAISenseConfig extends unreal.UObject {
  
  /**
    specifies age limit after stimuli generated by this sense become forgotten. 0 means "never"
  **/
  @:uproperty private var MaxAge : unreal.Float32;
  @:uproperty private var DebugColor : unreal.FColor;
  
}