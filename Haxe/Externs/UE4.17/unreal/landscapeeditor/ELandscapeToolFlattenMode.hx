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
package unreal.landscapeeditor;

@:umodule("LandscapeEditor")
@:glueCppIncludes("Public/LandscapeEditorObject.h")
@:uname("ELandscapeToolFlattenMode.Type")
@:uextern @:uenum extern enum ELandscapeToolFlattenMode {
  
  /**
    Flatten may both raise and lower values
  **/
  Both;
  
  /**
    Flatten may only raise values, values above the clicked point will be left unchanged
  **/
  Raise;
  
  /**
    Flatten may only lower values, values below the clicked point will be left unchanged
  **/
  Lower;
  
}
