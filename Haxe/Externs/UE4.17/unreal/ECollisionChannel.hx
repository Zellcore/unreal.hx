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
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  Enum indicating different type of objects for rigid-body collision purposes.
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:uname("ECollisionChannel")
@:uextern @:uenum extern enum ECollisionChannel {
  
  /**
    WorldStatic
  **/
  @DisplayName("WorldStatic")
  ECC_WorldStatic;
  
  /**
    WorldDynamic
  **/
  @DisplayName("WorldDynamic")
  ECC_WorldDynamic;
  
  /**
    Pawn
  **/
  @DisplayName("Pawn")
  ECC_Pawn;
  
  /**
    Visibility
  **/
  @DisplayName("Visibility")
  ECC_Visibility;
  
  /**
    Camera
  **/
  @DisplayName("Camera")
  ECC_Camera;
  
  /**
    PhysicsBody
  **/
  @DisplayName("PhysicsBody")
  ECC_PhysicsBody;
  
  /**
    Vehicle
  **/
  @DisplayName("Vehicle")
  ECC_Vehicle;
  
  /**
    Destructible
  **/
  @DisplayName("Destructible")
  ECC_Destructible;
  
  /**
    Reserved for gizmo collision
  **/
  ECC_EngineTraceChannel1;
  ECC_EngineTraceChannel2;
  ECC_EngineTraceChannel3;
  ECC_EngineTraceChannel4;
  ECC_EngineTraceChannel5;
  ECC_EngineTraceChannel6;
  ECC_GameTraceChannel1;
  ECC_GameTraceChannel2;
  ECC_GameTraceChannel3;
  ECC_GameTraceChannel4;
  ECC_GameTraceChannel5;
  ECC_GameTraceChannel6;
  ECC_GameTraceChannel7;
  ECC_GameTraceChannel8;
  ECC_GameTraceChannel9;
  ECC_GameTraceChannel10;
  ECC_GameTraceChannel11;
  ECC_GameTraceChannel12;
  ECC_GameTraceChannel13;
  ECC_GameTraceChannel14;
  ECC_GameTraceChannel15;
  ECC_GameTraceChannel16;
  ECC_GameTraceChannel17;
  ECC_GameTraceChannel18;
  
  /**
    Add only nonserialized/transient flags below // NOTE!!!! THESE ARE BEING DEPRECATED BUT STILL THERE FOR BLUEPRINT. PLEASE DO NOT USE THEM IN CODE
  **/
  ECC_OverlapAll_Deprecated;
  
}
