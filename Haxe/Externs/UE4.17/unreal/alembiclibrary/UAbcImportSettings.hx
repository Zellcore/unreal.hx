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
package unreal.alembiclibrary;

/**
  Class that contains all options for importing an alembic file
**/
@:umodule("AlembicLibrary")
@:glueCppIncludes("AbcImportSettings.h")
@:uextern @:uclass extern class UAbcImportSettings extends unreal.UObject {
  @:uproperty public var ConversionSettings : unreal.alembiclibrary.FAbcConversionSettings;
  @:uproperty public var StaticMeshSettings : unreal.alembiclibrary.FAbcStaticMeshSettings;
  @:uproperty public var MaterialSettings : unreal.alembiclibrary.FAbcMaterialSettings;
  @:uproperty public var CompressionSettings : unreal.alembiclibrary.FAbcCompressionSettings;
  @:uproperty public var NormalGenerationSettings : unreal.alembiclibrary.FAbcNormalGenerationSettings;
  @:uproperty public var SamplingSettings : unreal.alembiclibrary.FAbcSamplingSettings;
  
  /**
    Type of asset to import from Alembic file
  **/
  @:uproperty public var ImportType : unreal.alembiclibrary.EAlembicImportType;
  
}