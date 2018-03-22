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
  This is read out of config and defines a tree of chunk dependencies
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Commandlets/ChunkDependencyInfo.h")
@:uextern @:uclass extern class UChunkDependencyInfo extends unreal.UObject {
  
  /**
    List of dependencies used to remove redundant chunks
  **/
  @:uproperty public var DependencyArray : unreal.TArray<unreal.editor.FChunkDependency>;
  
}