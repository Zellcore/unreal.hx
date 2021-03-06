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
package unreal.animgraphruntime;

/**
  This node uses a source transform of a socket on the skeletal mesh to automatically calculate
  Yaw and Pitch directions for a referenced aim offset given a point in the world to look at.
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("Public/AnimNodes/AnimNode_AimOffsetLookAt.h")
@:uextern @:ustruct extern class FAnimNode_AimOffsetLookAt extends unreal.animgraphruntime.FAnimNode_BlendSpacePlayer {
  
  /**
    Amount of this node to blend into the output pose
  **/
  @:uproperty public var Alpha : unreal.Float32;
  
  /**
    Axis in the socket transform to consider the 'forward' or look at axis
  **/
  @:uproperty public var SocketAxis : unreal.FVector;
  
  /**
    Location, in world space to look at
  **/
  @:uproperty public var LookAtLocation : unreal.FVector;
  
  /**
    Socket to treat as the look at pivot (optional). This will overwrite the translation of the source socket transform to better match the lookat direction
  **/
  @:uproperty public var PivotSocketName : unreal.FName;
  
  /**
    Socket to treat as the look at source
  **/
  @:uproperty public var SourceSocketName : unreal.FName;
  
  /**
    * Max LOD that this node is allowed to run
    * For example if you have LODThreadhold to be 2, it will run until LOD 2 (based on 0 index)
    * when the component LOD becomes 3, it will stop update/evaluate
    * currently transition would be issue and that has to be re-visited
  **/
  @:uproperty public var LODThreshold : unreal.Int32;
  @:uproperty public var BasePose : unreal.FPoseLink;
  
}
