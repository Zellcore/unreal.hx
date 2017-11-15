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
package unreal;

@:glueCppIncludes("Classes/Animation/AnimationAsset.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimationGroupReference {
  
  /**
    The type of membership in the group (potential leader, always follower, etc...)
  **/
  @:uproperty public var GroupRole : unreal.EAnimGroupRole;
  
  /**
    The name of the group
  **/
  @:uproperty public var GroupName : unreal.FName;
  
}
