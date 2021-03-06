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
  An animation slot node normally acts as a passthru, but a montage or PlaySlotAnimation call from
  game code can cause an animation to blend in and be played on the slot temporarily, overriding the
  Source input.
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("Public/AnimNodes/AnimNode_Slot.h")
@:uextern @:ustruct extern class FAnimNode_Slot extends unreal.FAnimNode_Base {
  
  /**
    Whether we should continue to update the source pose regardless of whether it would be used.
  **/
  @:uproperty public var bAlwaysUpdateSourcePose : Bool;
  
  /**
    The name of this slot, exposed to gameplay code, etc...
  **/
  @:uproperty public var SlotName : unreal.FName;
  
  /**
    The source input, passed thru to the output unless a montage or slot animation is currently playing
  **/
  @:uproperty public var Source : unreal.FPoseLink;
  
}
