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
package unreal.analyticsmulticasteditor;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  
**/
@:umodule("AnalyticsMulticastEditor")
@:glueCppIncludes("AnalyticsMulticastSettings.h")
@:noClass @:uextern @:uclass extern class UAnalyticsMulticastSettings extends unreal.analyticsvisualediting.UAnalyticsSettingsBase {
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  @:uproperty public var DevelopmentMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  @:uproperty public var TestMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  @:uproperty public var DebugMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  @:uproperty public var ReleaseMulticastProviders : unreal.TArray<unreal.FString>;
  
}