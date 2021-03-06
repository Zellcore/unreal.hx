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
package unreal.timesynth;

@:umodule("TimeSynth")
@:glueCppIncludes("TimeSynthComponent.h")
@:uextern @:uclass extern class UTimeSynthClip extends unreal.UObject {
  
  /**
    The clip duration
  **/
  @:uproperty public var ClipQuantization : unreal.timesynth.ETimeSynthEventClipQuantization;
  
  /**
    The clip duration
  **/
  @:uproperty public var ClipDuration : unreal.timesynth.FTimeSynthTimeDef;
  
  /**
    The amount of time to fade out the clip when it reaches its set duration.
  **/
  @:uproperty public var FadeOutTime : unreal.timesynth.FTimeSynthTimeDef;
  
  /**
    If true, the clip will apply a fade when the clip duration expires. Otherwise, the clip plays out past the "duration".
  **/
  @:uproperty public var bApplyFadeOut : Bool;
  
  /**
    The amount of time to fade in the clip from the start
  **/
  @:uproperty public var FadeInTime : unreal.timesynth.FTimeSynthTimeDef;
  
  /**
    The pitch scale range of the clip (in semi-tone range)
  **/
  @:uproperty public var PitchScaleSemitones : unreal.FVector2D;
  
  /**
    The volume scale range of the clip
  **/
  @:uproperty public var VolumeScaleDb : unreal.FVector2D;
  
  /**
    Array of possible choices for the clip, allows randomization and distance picking
  **/
  @:uproperty public var Sounds : unreal.TArray<unreal.timesynth.FTimeSynthClipSound>;
  
}
