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
package unreal.editor;

/**
  ELevelViewportType
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Classes/Editor/UnrealEdTypes.h")
@:uname("ELevelViewportType")
@:uextern @:uenum extern enum ELevelViewportType {
  
  /**
    Top
  **/
  LVT_OrthoXY;
  
  /**
    Front
  **/
  LVT_OrthoXZ;
  
  /**
    Left
  **/
  LVT_OrthoYZ;
  LVT_Perspective;
  LVT_OrthoFreelook;
  
  /**
    Bottom
  **/
  LVT_OrthoNegativeXY;
  
  /**
    Back
  **/
  LVT_OrthoNegativeXZ;
  
  /**
    Right
  **/
  LVT_OrthoNegativeYZ;
  LVT_MAX;
  
}
