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
package unreal.assetregistry;

/**
  A struct representing a single AssetBundle
**/
@:umodule("AssetRegistry")
@:glueCppIncludes("Public/AssetBundleData.h")
@:uextern @:ustruct extern class FAssetBundleEntry {
  
  /**
    List of string assets contained in this bundle
  **/
  @:uproperty public var BundleAssets : unreal.TArray<unreal.FStringAssetReference>;
  
  /**
    Specific name of this bundle, should be unique for a given scope
  **/
  @:uproperty public var BundleName : unreal.FName;
  
  /**
    Asset this bundle is saved within. This is empty for global bundles, or in the saved bundle info
  **/
  @:uproperty public var BundleScope : unreal.FPrimaryAssetId;
  
}
