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

/**
  Preview APawn class for this track
**/
@:glueCppIncludes("Classes/Matinee/InterpGroupCamera.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCameraPreviewInfo {
  
  /**
    APawn Inst - CameraAnimInst doesn't really exist in editor *
  **/
  @:uproperty public var PawnInst : unreal.APawn;
  @:uproperty public var Rotation : unreal.FRotator;
  
  /**
    for now this is read-only. It has maintenance issue to be resolved if I enable this.
  **/
  @:uproperty public var Location : unreal.FVector;
  @:uproperty public var AnimSeq : unreal.UAnimSequence;
  @:uproperty public var PawnClass : unreal.TSubclassOf<unreal.APawn>;
  
}
