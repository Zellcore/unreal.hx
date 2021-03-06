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
  Struct that exists to store runtime cache to make key to action lookups faster.
**/
@:glueCppIncludes("Classes/Components/InputComponent.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCachedKeyToActionInfo {
  
  /**
    Which PlayerInput object this has been built for
  **/
  @:uproperty public var PlayerInput : unreal.UPlayerInput;
  
}
