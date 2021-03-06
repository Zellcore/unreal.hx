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

@:glueCppIncludes("Public/Animation/AnimCurveTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTransformCurve extends unreal.FAnimCurveBase {
  @:uproperty public var ScaleCurve : unreal.FVectorCurve;
  
  /**
    Rotation curve - right now we use euler because quat also doesn't provide linear interpolation - curve editor can't handle quat interpolation
    If you hit gimbal lock, you should add extra key to fix it. This will cause gimbal lock.
    @TODO: Eventually we'll need FRotationCurve that would contain rotation curve - that will interpolate as slerp or as quaternion
  **/
  @:uproperty public var RotationCurve : unreal.FVectorCurve;
  
  /**
    Curve data for each transform.
  **/
  @:uproperty public var TranslationCurve : unreal.FVectorCurve;
  
}
