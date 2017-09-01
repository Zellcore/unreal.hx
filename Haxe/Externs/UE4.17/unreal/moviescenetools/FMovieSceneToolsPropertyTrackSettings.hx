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
package unreal.moviescenetools;

@:umodule("MovieSceneTools")
@:glueCppIncludes("MovieSceneToolsProjectSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMovieSceneToolsPropertyTrackSettings {
  
  /**
    Name to the keyed property within the Actor or ActorComponent.
  **/
  @:uproperty public var PropertyName : unreal.FString;
  
  /**
    Optional ActorComponent tag (when keying a component property).
  **/
  @:uproperty public var ComponentName : unreal.FString;
  
}