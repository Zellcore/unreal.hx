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
package unreal.animationsharing;

@:umodule("AnimationSharing")
@:glueCppIncludes("AnimationSharingTypes.h")
@:uextern @:uclass extern class UAnimationSharingStateProcessor extends unreal.UObject {
  @:ufunction(BlueprintNativeEvent) public function ProcessActorState(OutState : unreal.Int32, InActor : unreal.AActor, CurrentState : unreal.UInt8, OnDemandState : unreal.UInt8, bShouldProcess : Bool) : Void;
  @:ufunction(BlueprintNativeEvent) public function GetAnimationStateEnum() : unreal.UEnum;
  
}