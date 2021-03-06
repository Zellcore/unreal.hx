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
package unreal.party;

@:umodule("Party")
@:glueCppIncludes("Public/Party/PartyTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPartyPlatformSessionInfo {
  
  /**
    Primary OSS ID of the player that owns this console session
  **/
  @:uproperty public var OwnerPrimaryId : unreal.FUniqueNetIdRepl;
  
  /**
    The platform session id. Will be unset if it is not yet available to be joined.
  **/
  @:uproperty public var SessionId : unreal.FString;
  
  /**
    The name of the OSS the platform session is for (because in a crossplay party, members can be part of different platform OSS')
  **/
  @:uproperty public var OSSName : unreal.FName;
  
}
