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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Perception/AISense_Damage.h")
@:uextern extern class FAIDamageEvent {
  
  /**
    Actor that instigated damage. Can be None
  **/
  public var Instigator : unreal.AActor;
  
  /**
    Damaged actor
  **/
  public var DamagedActor : unreal.AActor;
  
  /**
    Event's additional spatial information
        @TODO document
  **/
  public var HitLocation : unreal.FVector;
  
  /**
    Event's "Location", or what will be later treated as the perceived location for this sense.
        If not set, HitLocation will be used, if that is unset too DamagedActor's location
  **/
  public var Location : unreal.FVector;
  
  /**
    Damage taken by DamagedActor.
        @Note 0-damage events do not get ignored
  **/
  public var Amount : unreal.Float32;
  
}