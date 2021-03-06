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
  Active GameplayEffect instance
      -What GameplayEffect Spec
      -Start time
   -When to execute next
   -Replication callbacks
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Public/GameplayEffect.h")
@:uextern @:ustruct extern class FActiveGameplayEffect extends unreal.FFastArraySerializerItem {
  
  /**
    Not sure if this should replicate or not. If replicated, we may have trouble where IsInhibited doesn't appear to change when we do tag checks (because it was previously inhibited, but replication made it inhibited).
  **/
  @:uproperty public var bIsInhibited : Bool;
  @:uproperty public var StartWorldTime : unreal.Float32;
  
  /**
    Used for handling duration modifications being replicated
  **/
  @:uproperty public var CachedStartServerWorldTime : unreal.Float32;
  
  /**
    Server time this started
  **/
  @:uproperty public var StartServerWorldTime : unreal.Float32;
  @:uproperty public var PredictionKey : unreal.gameplayabilities.FPredictionKey;
  @:uproperty public var Spec : unreal.gameplayabilities.FGameplayEffectSpec;
  
}
