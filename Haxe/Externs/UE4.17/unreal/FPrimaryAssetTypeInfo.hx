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
  Structure with publicly exposed information about an asset type. These can be loaded out of a config file
**/
@:glueCppIncludes("Classes/Engine/AssetManagerTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPrimaryAssetTypeInfo {
  
  /**
    Number of tracked assets of that type
  **/
  @:uproperty public var NumberOfAssets : unreal.Int32;
  
  /**
    True if this is an asset created at runtime that has no on disk representation. Cannot be set in config
  **/
  @:uproperty public var bIsDynamicAsset : Bool;
  
  /**
    Combination of directories and individual assets to search for this asset type. Will have the Directories and Assets added to it
  **/
  @:uproperty public var AssetScanPaths : unreal.TArray<unreal.FString>;
  
  /**
    Default management rules for this type, individual assets can be overridden
  **/
  @:uproperty public var Rules : unreal.FPrimaryAssetRules;
  
  /**
    True if this type is editor only
  **/
  @:uproperty public var bIsEditorOnly : Bool;
  
  /**
    True if the assets loaded are blueprints classes, false if they are normal UObjects
  **/
  @:uproperty public var bHasBlueprintClasses : Bool;
  
  /**
    Base Class of all assets of this type
  **/
  @:uproperty public var AssetBaseClassLoaded : unreal.UClass;
  
  /**
    The logical name for this type of Primary Asset
  **/
  @:uproperty public var PrimaryAssetType : unreal.FName;
  
}
