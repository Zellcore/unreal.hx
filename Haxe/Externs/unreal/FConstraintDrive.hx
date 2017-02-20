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
package unreal;

@:glueCppIncludes("PhysicsEngine/ConstraintDrives.h")
@:uextern extern class FConstraintDrive {
  
  /**
    Enables/Disables velocity drive (angular velocity if using angular drive)
  **/
  public var bEnableVelocityDrive : Bool;
  
  /**
    Enables/Disables position drive (orientation if using angular drive)
  **/
  public var bEnablePositionDrive : Bool;
  
  /**
    The force limit of the drive.
  **/
  public var MaxForce : unreal.Float32;
  
  /**
    The damping strength of the drive. Force proportional to the velocity error.
  **/
  public var Damping : unreal.Float32;
  
  /**
    The spring strength of the drive. Force proportional to the position error.
  **/
  public var Stiffness : unreal.Float32;
  
}