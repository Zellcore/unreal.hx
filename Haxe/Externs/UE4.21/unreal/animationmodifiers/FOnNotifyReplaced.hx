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
package unreal.animationmodifiers;

/**
  Delegate called when a notify was replaced
  @param OldNotify
  @param NewNotify
  
**/
@:glueCppIncludes("Public/AnimationBlueprintLibrary.h")
@:uParamName("OldNotify")
@:uParamName("NewNotify")
@:umodule("AnimationModifiers")
typedef FOnNotifyReplaced = unreal.DynamicDelegate<FOnNotifyReplaced, unreal.Const<unreal.UAnimNotify>->unreal.Const<unreal.UAnimNotify>->Void>;