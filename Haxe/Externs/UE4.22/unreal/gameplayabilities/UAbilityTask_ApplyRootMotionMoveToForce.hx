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
package unreal.gameplayabilities;

/**
  Applies force to character's movement
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/Tasks/AbilityTask_ApplyRootMotionMoveToForce.h")
@:uextern @:uclass extern class UAbilityTask_ApplyRootMotionMoveToForce extends unreal.gameplayabilities.UAbilityTask_ApplyRootMotion_Base {
  @:uproperty private var PathOffsetCurve : unreal.UCurveVector;
  @:uproperty private var NewMovementMode : unreal.EMovementMode;
  @:uproperty private var Duration : unreal.Float32;
  @:uproperty private var TargetLocation : unreal.FVector;
  @:uproperty private var StartLocation : unreal.FVector;
  @:uproperty public var OnTimedOutAndDestinationReached : unreal.gameplayabilities.FApplyRootMotionMoveToForceDelegate;
  @:uproperty public var OnTimedOut : unreal.gameplayabilities.FApplyRootMotionMoveToForceDelegate;
  
  /**
    Apply force to character's movement
  **/
  @:ufunction(BlueprintCallable) static public function ApplyRootMotionMoveToForce(OwningAbility : unreal.gameplayabilities.UGameplayAbility, TaskInstanceName : unreal.FName, TargetLocation : unreal.FVector, Duration : unreal.Float32, bSetNewMovementMode : Bool, MovementMode : unreal.EMovementMode, bRestrictSpeedToExpected : Bool, PathOffsetCurve : unreal.UCurveVector, VelocityOnFinishMode : unreal.ERootMotionFinishVelocityMode, SetVelocityOnFinish : unreal.FVector, ClampVelocityOnFinish : unreal.Float32) : unreal.gameplayabilities.UAbilityTask_ApplyRootMotionMoveToForce;
  
}
