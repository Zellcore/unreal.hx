/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.gameplayabilities;

@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/Tasks/AbilityTask_VisualizeTargeting.h")
@:uextern extern class UAbilityTask_VisualizeTargeting extends unreal.gameplayabilities.UAbilityTask {
  
  /**
    Spawns target actor and uses it for visualization.
  **/
  static public function VisualizeTargeting(WorldContextObject : unreal.UObject, Class : unreal.TSubclassOf<unreal.gameplayabilities.AGameplayAbilityTargetActor>, TaskInstanceName : unreal.FName, Duration : unreal.Float32) : unreal.gameplayabilities.UAbilityTask_VisualizeTargeting;
  
  /**
    Visualize target using a specified target actor.
  **/
  static public function VisualizeTargetingUsingActor(WorldContextObject : unreal.UObject, TargetActor : unreal.gameplayabilities.AGameplayAbilityTargetActor, TaskInstanceName : unreal.FName, Duration : unreal.Float32) : unreal.gameplayabilities.UAbilityTask_VisualizeTargeting;
  @:final public function BeginSpawningActor(WorldContextObject : unreal.UObject, Class : unreal.TSubclassOf<unreal.gameplayabilities.AGameplayAbilityTargetActor>, SpawnedActor : unreal.PRef<unreal.gameplayabilities.AGameplayAbilityTargetActor>) : Bool;
  @:final public function FinishSpawningActor(WorldContextObject : unreal.UObject, SpawnedActor : unreal.gameplayabilities.AGameplayAbilityTargetActor) : Void;
  
}