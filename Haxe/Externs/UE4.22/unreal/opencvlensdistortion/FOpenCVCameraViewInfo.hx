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
package unreal.opencvlensdistortion;

@:umodule("OpenCVLensDistortion")
@:glueCppIncludes("Public/OpenCVLensDistortionParameters.h")
@:uextern @:ustruct extern class FOpenCVCameraViewInfo {
  
  /**
    Focal length aspect ratio -> Fy / Fx
  **/
  @:uproperty public var FocalLengthRatio : unreal.Float32;
  
  /**
    Vertical Field Of View in degrees
  **/
  @:uproperty public var VerticalFOV : unreal.Float32;
  
  /**
    Horizontal Field Of View in degrees
  **/
  @:uproperty public var HorizontalFOV : unreal.Float32;
  
}
