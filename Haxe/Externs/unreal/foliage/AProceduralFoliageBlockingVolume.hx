/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.foliage;


/**
  An invisible volume used to block ProceduralFoliage instances from being spawned.
**/
@:umodule("Foliage")
@:glueCppIncludes("ProceduralFoliageBlockingVolume.h")
@:uextern extern class AProceduralFoliageBlockingVolume extends unreal.AVolume {
  public var ProceduralFoliageVolume : unreal.foliage.AProceduralFoliageVolume;
  
}