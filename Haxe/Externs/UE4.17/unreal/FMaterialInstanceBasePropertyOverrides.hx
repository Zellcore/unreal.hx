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
  Properties from the base material that can be overridden in material instances.
**/
@:glueCppIncludes("Classes/Materials/MaterialInstanceBasePropertyOverrides.h")
@:uextern @:ustruct extern class FMaterialInstanceBasePropertyOverrides {
  
  /**
    Whether the material should support a dithered LOD transition when used with the foliage system.
  **/
  @:uproperty public var DitheredLODTransition : Bool;
  
  /**
    Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.
  **/
  @:uproperty public var TwoSided : Bool;
  
  /**
    The shading model
  **/
  @:uproperty public var ShadingModel : unreal.EMaterialShadingModel;
  
  /**
    The blend mode
  **/
  @:uproperty public var BlendMode : unreal.EBlendMode;
  
  /**
    If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.
  **/
  @:uproperty public var OpacityMaskClipValue : unreal.Float32;
  
  /**
    Enables override of the two sided property.
  **/
  @:uproperty public var bOverride_TwoSided : Bool;
  
  /**
    Enables override of the two sided property.
  **/
  @:uproperty public var bOverride_DitheredLODTransition : Bool;
  
  /**
    Enables override of the shading model.
  **/
  @:uproperty public var bOverride_ShadingModel : Bool;
  
  /**
    Enables override of the blend mode.
  **/
  @:uproperty public var bOverride_BlendMode : Bool;
  
  /**
    Enables override of the opacity mask clip value.
  **/
  @:uproperty public var bOverride_OpacityMaskClipValue : Bool;
  
}
