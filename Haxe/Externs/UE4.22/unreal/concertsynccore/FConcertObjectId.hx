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
package unreal.concertsynccore;

@:umodule("ConcertSyncCore")
@:glueCppIncludes("Public/ConcertTransactionEvents.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FConcertObjectId {
  @:uproperty public var ObjectPersistentFlags : unreal.FakeUInt32;
  @:uproperty public var ObjectName : unreal.FName;
  @:uproperty public var ObjectOuterPathName : unreal.FName;
  @:uproperty public var ObjectClassPathName : unreal.FName;
  
}