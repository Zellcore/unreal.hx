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
  AudioComponent is used to play a Sound
  
  @see https://docs.unrealengine.com/latest/INT/Audio/Overview/index.html
  @see USoundBase
**/
@:glueCppIncludes("Components/AudioComponent.h")
@:uextern @:uclass extern class UAudioComponent extends unreal.USceneComponent {
  
  /**
    Called when subtitles are sent to the SubtitleManager.  Set this delegate if you want to hijack the subtitles for other purposes
  **/
  @:uproperty public var OnQueueSubtitles : unreal.FOnQueueSubtitles;
  
  /**
    Called as a sound plays on the audio component to allow BP to perform actions based on playback percentage.
    Computed as samples played divided by total samples, taking into account pitch.
    Not currently implemented on all platforms.
  **/
  @:uproperty public var OnAudioPlaybackPercent : unreal.FOnAudioPlaybackPercent;
  
  /**
    called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
  **/
  @:uproperty public var OnAudioFinished : unreal.FOnAudioFinished;
  
  /**
    What sound concurrency to use for sounds generated by this audio component
  **/
  @:uproperty public var ConcurrencySettings : unreal.USoundConcurrency;
  
  /**
    If bOverrideSettings is true, the attenuation properties to use for sounds generated by this component
  **/
  @:uproperty public var AttenuationOverrides : unreal.FSoundAttenuationSettings;
  
  /**
    If bOverrideSettings is false, the asset to use to determine attenuation properties for sounds generated by this component
  **/
  @:uproperty public var AttenuationSettings : unreal.USoundAttenuation;
  
  /**
    The frequency of the lowpass filter (in hertz) to apply to this voice. A frequency of 0.0 is the device sample rate and will bypass the filter.
  **/
  @:uproperty public var LowPassFilterFrequency : unreal.Float32;
  @:deprecated @:uproperty public var HighFrequencyGainMultiplier_DEPRECATED : unreal.Float32;
  
  /**
    A pitch multiplier to apply to sounds generated by this component
  **/
  @:uproperty public var PitchMultiplier : unreal.Float32;
  @:deprecated @:uproperty public var VolumeWeightedPriorityScale_DEPRECATED : unreal.Float32;
  
  /**
    Used by the subtitle manager to prioritize subtitles wave instances spawned by this component.
  **/
  @:uproperty public var SubtitlePriority : unreal.Float32;
  
  /**
    A priority value that is used for sounds that play on this component that scales against final output volume.
  **/
  @:uproperty public var Priority : unreal.Float32;
  
  /**
    A volume multiplier to apply to sounds generated by this component
  **/
  @:uproperty public var VolumeMultiplier : unreal.Float32;
  
  /**
    The upper bound to use when randomly determining a volume multiplier
  **/
  @:uproperty public var VolumeModulationMax : unreal.Float32;
  
  /**
    The lower bound to use when randomly determining a volume multiplier
  **/
  @:uproperty public var VolumeModulationMin : unreal.Float32;
  
  /**
    The upper bound to use when randomly determining a pitch multiplier
  **/
  @:uproperty public var PitchModulationMax : unreal.Float32;
  
  /**
    The lower bound to use when randomly determining a pitch multiplier
  **/
  @:uproperty public var PitchModulationMin : unreal.Float32;
  
  /**
    Configurable, serialized ID for audio plugins
  **/
  @:uproperty public var AudioComponentUserID : unreal.FName;
  
  /**
    If true, subtitles in the sound data will be ignored.
  **/
  @:uproperty public var bSuppressSubtitles : Bool;
  @:uproperty public var bOverridePriority : Bool;
  
  /**
    Whether or not to apply a low-pass filter to the sound that plays in this audio component.
  **/
  @:uproperty public var bEnableLowPassFilter : Bool;
  
  /**
    Whether or not this sound plays when the game is paused in the UI
  **/
  @:uproperty public var bIsUISound : Bool;
  
  /**
    Whether or not to override the sound's subtitle priority.
  **/
  @:uproperty public var bOverrideSubtitlePriority : Bool;
  
  /**
    Should the Attenuation Settings asset be used (false) or should the properties set directly on the component be used for attenuation properties
  **/
  @:uproperty public var bOverrideAttenuation : Bool;
  
  /**
    Is this audio component allowed to be spatialized?
  **/
  @:uproperty public var bAllowSpatialization : Bool;
  
  /**
    Whether the wave instances should remain active if they're dropped by the prioritization code. Useful for e.g. vehicle sounds that shouldn't cut out.
  **/
  @:uproperty public var bShouldRemainActiveIfDropped : Bool;
  
  /**
    Stop sound when owner is destroyed
  **/
  @:uproperty public var bStopWhenOwnerDestroyed : Bool;
  
  /**
    Auto destroy this component on completion
  **/
  @:uproperty public var bAutoDestroy : Bool;
  
  /**
    Optional sound group this AudioComponent belongs to
  **/
  @:uproperty public var SoundClassOverride : unreal.USoundClass;
  
  /**
    Array of per-instance parameters for this AudioComponent.
  **/
  @:uproperty public var InstanceParameters : unreal.TArray<unreal.FAudioComponentParam>;
  
  /**
    The sound to be played
  **/
  @:uproperty public var Sound : unreal.USoundBase;
  
  /**
    Set what sound is played by this component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSound(NewSound : unreal.USoundBase) : Void;
  
  /**
    This can be used in place of "play" when it is desired to fade in the sound over time.
    
    If FadeTime is 0.0, the change in volume is instant.
    If FadeTime is > 0.0, the multiplier will be increased from 0 to FadeVolumeLevel over FadeIn seconds.
    
    @param FadeInDuration how long it should take to reach the FadeVolumeLevel
    @param FadeVolumeLevel the percentage of the AudioComponents's calculated volume to fade to
  **/
  @:ufunction(BlueprintCallable) public function FadeIn(FadeInDuration : unreal.Float32, FadeVolumeLevel : unreal.Float32 = 1.000000, StartTime : unreal.Float32 = 0.000000) : Void;
  
  /**
    This is used in place of "stop" when it is desired to fade the volume of the sound before stopping.
    
    If FadeTime is 0.0, this is the same as calling Stop().
    If FadeTime is > 0.0, this will adjust the volume multiplier to FadeVolumeLevel over FadeInTime seconds
    and then stop the sound.
    
    @param FadeOutDuration how long it should take to reach the FadeVolumeLevel
    @param FadeVolumeLevel the percentage of the AudioComponents's calculated volume in which to fade to
  **/
  @:ufunction(BlueprintCallable) public function FadeOut(FadeOutDuration : unreal.Float32, FadeVolumeLevel : unreal.Float32) : Void;
  
  /**
    Start a sound playing on an audio component
  **/
  @:ufunction(BlueprintCallable) public function Play(StartTime : unreal.Float32 = 0.000000) : Void;
  
  /**
    Stop an audio component playing its sound cue, issue any delegates if needed
  **/
  @:ufunction(BlueprintCallable) public function Stop() : Void;
  
  /**
    Pause an audio component playing its sound cue, issue any delegates if needed
  **/
  @:ufunction(BlueprintCallable) @:final public function SetPaused(bPause : Bool) : Void;
  
  /**
    @return true if this component is currently playing a SoundCue.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function IsPlaying() : Bool;
  
  /**
    This will allow one to adjust the volume of an AudioComponent on the fly
  **/
  @:ufunction(BlueprintCallable) @:final public function AdjustVolume(AdjustVolumeDuration : unreal.Float32, AdjustVolumeLevel : unreal.Float32) : Void;
  
  /**
    Set a float instance parameter for use in sound cues played by this audio component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFloatParameter(InName : unreal.FName, InFloat : unreal.Float32) : Void;
  
  /**
    Set a sound wave instance parameter for use in sound cues played by this audio component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetWaveParameter(InName : unreal.FName, InWave : unreal.USoundWave) : Void;
  
  /**
    Set a boolean instance parameter for use in sound cues played by this audio component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetBoolParameter(InName : unreal.FName, InBool : Bool) : Void;
  
  /**
    Set an integer instance parameter for use in sound cues played by this audio component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetIntParameter(InName : unreal.FName, InInt : unreal.Int32) : Void;
  
  /**
    Set a new volume multiplier
  **/
  @:ufunction(BlueprintCallable) @:final public function SetVolumeMultiplier(NewVolumeMultiplier : unreal.Float32) : Void;
  
  /**
    Set a new pitch multiplier
  **/
  @:ufunction(BlueprintCallable) @:final public function SetPitchMultiplier(NewPitchMultiplier : unreal.Float32) : Void;
  
  /**
    Set whether sounds generated by this audio component should be considered UI sounds
  **/
  @:ufunction(BlueprintCallable) @:final public function SetUISound(bInUISound : Bool) : Void;
  
  /**
    Modify the attenuation settings of the audio component
  **/
  @:ufunction(BlueprintCallable) @:final public function AdjustAttenuation(InAttenuationSettings : unreal.Const<unreal.PRef<unreal.FSoundAttenuationSettings>>) : Void;
  
  /**
    Sets how much audio the sound should send to the given submix.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSubmixSend(Submix : unreal.USoundSubmix, SendLevel : unreal.Float32) : Void;
  
  /**
    Sets whether or not the low pass filter is enabled on the audio component.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetLowPassFilterEnabled(InLowPassFilterEnabled : Bool) : Void;
  
  /**
    Sets lowpass filter frequency of the audio component.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetLowPassFilterFrequency(InLowPassFilterFrequency : unreal.Float32) : Void;
  @:ufunction(BlueprintCallable) @:final public function BP_GetAttenuationSettingsToApply(OutAttenuationSettings : unreal.PRef<unreal.FSoundAttenuationSettings>) : Bool;
  
}
