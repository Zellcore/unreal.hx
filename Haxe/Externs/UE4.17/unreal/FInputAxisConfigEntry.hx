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
  Configurable properties for control axes.
**/
@:glueCppIncludes("GameFramework/PlayerInput.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FInputAxisConfigEntry {
  
  /**
    Properties for the Axis Key
  **/
  @:uproperty public var AxisProperties : unreal.FInputAxisProperties;
  
  /**
    Axis Key these properties apply to
  **/
  @:uproperty public var AxisKeyName : unreal.FName;
  
}