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
  * Base class for attenuation settings.
**/
@:glueCppIncludes("Engine/Attenuation.h")
@:uextern @:ustruct extern class FBaseAttenuationSettings {
  
  /**
    The distance over which falloff occurs.
  **/
  @:uproperty public var FalloffDistance : unreal.Float32;
  
  /**
    The distance back from the sound's origin to begin the cone when using the cone attenuation shape.
  **/
  @:uproperty public var ConeOffset : unreal.Float32;
  
  /**
    The dimensions to use for the attenuation shape. Interpretation of the values differ per shape.
             Sphere  - X is Sphere Radius. Y and Z are unused
             Capsule - X is Capsule Half Height, Y is Capsule Radius, Z is unused
             Box     - X, Y, and Z are the Box's dimensions
             Cone    - X is Cone Radius, Y is Cone Angle, Z is Cone Falloff Angle
  **/
  @:uproperty public var AttenuationShapeExtents : unreal.FVector;
  
  /**
    The volume at maximum distance in deciBels.
  **/
  @:uproperty public var dBAttenuationAtMax : unreal.Float32;
  
  /**
    The shape of the attenuation volume.
  **/
  @:uproperty public var AttenuationShape : unreal.EAttenuationShape;
  @:uproperty public var CustomAttenuationCurve : unreal.FRuntimeFloatCurve;
  
  /**
    The type of volume versus distance algorithm to use for the attenuation model.
  **/
  @:uproperty public var DistanceAlgorithm : unreal.EAttenuationDistanceModel;
  
}