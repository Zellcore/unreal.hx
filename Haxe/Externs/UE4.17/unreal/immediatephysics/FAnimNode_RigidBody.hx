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
package unreal.immediatephysics;

/**
  Controller that simulates physics based on the physics asset of the skeletal mesh component
**/
@:umodule("ImmediatePhysics")
@:glueCppIncludes("Public/BoneControllers/AnimNode_RigidBody.h")
@:uextern @:ustruct extern class FAnimNode_RigidBody extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  
  /**
    Scale of cached bounds (vs. actual bounds).
    Increasing this may improve performance, but overlaps may not work as well.
    (A value of 1.0 effectively disables cached bounds).
  **/
  @:uproperty public var CachedBoundsScale : unreal.Float32;
  @:uproperty public var bOverrideWorldGravity : Bool;
  
  /**
    When true, simulation is done in component space. This means velocity is only inherited by animated bodies
  **/
  @:uproperty public var bComponentSpaceSimulation : Bool;
  @:uproperty public var bEnableWorldGeometry : Bool;
  
  /**
    The channel we use to find static geometry to collide with
  **/
  @:uproperty public var OverlapChannel : unreal.ECollisionChannel;
  
  /**
    Override gravity
  **/
  @:uproperty public var OverrideWorldGravity : unreal.FVector;
  
  /**
    Physics asset to use. If empty use the skeletal mesh's default physics asset
  **/
  @:uproperty public var OverridePhysicsAsset : unreal.UPhysicsAsset;
  
}
