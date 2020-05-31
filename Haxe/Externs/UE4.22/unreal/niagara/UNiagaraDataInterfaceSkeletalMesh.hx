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
package unreal.niagara;

/**
  Data Interface allowing sampling of static meshes.
**/
@:umodule("Niagara")
@:glueCppIncludes("NiagaraDataInterfaceSkeletalMesh.h")
@:uextern @:uclass extern class UNiagaraDataInterfaceSkeletalMesh extends unreal.niagara.UNiagaraDataInterface {
  
  /**
    Whether any skeleton sampling function is bound. Only used in game.
  **/
  @:uproperty public var bUseSkeletonSampling : Bool;
  
  /**
    Whether any vertex sampling function is bound. Only used in game.
  **/
  @:uproperty public var bUseVertexSampling : Bool;
  
  /**
    Whether any triangle sampling function is bound. Only used in game.
  **/
  @:uproperty public var bUseTriangleSampling : Bool;
  
  /**
    Set of specific sockets that can be used for sampling. Select from these with GetSpecificSocketAt and RandomSpecificSocket.
  **/
  @:uproperty public var SpecificSockets : unreal.TArray<unreal.FName>;
  
  /**
    Set of specific bones that can be used for sampling. Select from these with GetSpecificBoneAt and RandomSpecificBone.
  **/
  @:uproperty public var SpecificBones : unreal.TArray<unreal.FName>;
  
  /**
    If no regions are specified, we'll sample the whole mesh at this LODIndex. -1 indicates to use the last LOD.
  **/
  @:uproperty public var WholeMeshLOD : unreal.Int32;
  
  /**
    Sampling regions on the mesh from which to sample. Leave this empty to sample from the whole mesh.
  **/
  @:uproperty public var SamplingRegions : unreal.TArray<unreal.FName>;
  @:uproperty public var SkinningMode : unreal.niagara.ENDISkeletalMesh_SkinningMode;
  
  /**
    The source actor from which to sample. Takes precedence over the direct mesh.
  **/
  @:uproperty public var Source : unreal.AActor;
  
  /**
    Mesh used to sample from when not overridden by a source actor from the scene. Also useful for previewing in the editor.
  **/
  @:uproperty public var DefaultMesh : unreal.USkeletalMesh;
  
}