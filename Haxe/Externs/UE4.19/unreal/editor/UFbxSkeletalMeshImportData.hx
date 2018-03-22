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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Import data and options used when importing a static mesh from fbx
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxSkeletalMeshImportData.h")
@:uextern @:uclass extern class UFbxSkeletalMeshImportData extends unreal.editor.UFbxMeshImportData {
  
  /**
    Threshold to compare UV equality.
  **/
  @:uproperty public var ThresholdUV : unreal.Float32;
  
  /**
    Threshold to compare normal, tangent or bi-normal equality.
  **/
  @:uproperty public var ThresholdTangentNormal : unreal.Float32;
  
  /**
    Threshold to compare vertex position equality.
  **/
  @:uproperty public var ThresholdPosition : unreal.Float32;
  
  /**
    If enabled, creates Unreal morph objects for the imported meshes
  **/
  @:uproperty public var bImportMorphTargets : Bool;
  
  /**
    If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.
  **/
  @:uproperty public var bImportMeshesInBoneHierarchy : Bool;
  
  /**
    If checked, triangles with non-matching smoothing groups will be physically split.
  **/
  @:uproperty public var bPreserveSmoothingGroups : Bool;
  
  /**
    Enable this option to use frame 0 as reference pose
  **/
  @:uproperty public var bUseT0AsRefPose : Bool;
  
  /**
    If enabled, update the Skeleton (of the mesh being imported)'s reference pose.
  **/
  @:uproperty public var bUpdateSkeletonReferencePose : Bool;
  
}