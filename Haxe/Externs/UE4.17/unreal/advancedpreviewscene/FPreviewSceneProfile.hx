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
package unreal.advancedpreviewscene;

/**
  Preview scene profile settings structure.
**/
@:umodule("AdvancedPreviewScene")
@:glueCppIncludes("Public/AssetViewerSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPreviewSceneProfile {
  
  /**
    Rotation for directional light
  **/
  @:uproperty public var DirectionalLightRotation : unreal.FRotator;
  
  /**
    Speed at which the sky rotates when rotating is toggled
  **/
  @:uproperty public var RotationSpeed : unreal.Float32;
  
  /**
    Current rotation value of the sky in degrees (0 - 360)
  **/
  @:uproperty public var LightingRigRotation : unreal.Float32;
  
  /**
    Whether or not the Post Processing should influence the scene
  **/
  @:uproperty public var bPostProcessingEnabled : Bool;
  
  /**
    Manual set post processing settings
  **/
  @:uproperty public var PostProcessingSettings : unreal.FPostProcessSettings;
  
  /**
    Storing path to environment cube to prevent it from getting cooked
  **/
  @:uproperty public var EnvironmentCubeMapPath : unreal.FString;
  
  /**
    Toggle visibility of the floor mesh
  **/
  @:uproperty public var bShowFloor : Bool;
  
  /**
    Toggle visibility of the environment sphere
  **/
  @:uproperty public var bShowEnvironment : Bool;
  
  /**
    Toggle rotating of the sky and directional lighting, press K and drag for manual rotating of Sky and L for Directional lighting
  **/
  @:uproperty public var bRotateLightingRig : Bool;
  
  /**
    Manually set the sky light intensity (0.0 - 20.0)
  **/
  @:uproperty public var SkyLightIntensity : unreal.Float32;
  
  /**
    Manually set the directional light colour
  **/
  @:uproperty public var DirectionalLightColor : unreal.FLinearColor;
  
  /**
    Manually set the directional light intensity (0.0 - 20.0)
  **/
  @:uproperty public var DirectionalLightIntensity : unreal.Float32;
  
  /**
    Whether or not this profile should be stored in the Project ini file
  **/
  @:uproperty public var bSharedProfile : Bool;
  
  /**
    Name to identify the profile
  **/
  @:uproperty public var ProfileName : unreal.FString;
  
}
