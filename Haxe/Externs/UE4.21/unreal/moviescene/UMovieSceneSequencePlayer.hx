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
package unreal.moviescene;

/**
  Abstract class that provides consistent player behaviour for various animation players
**/
@:umodule("MovieScene")
@:glueCppIncludes("MovieSceneSequencePlayer.h")
@:uextern @:uclass extern class UMovieSceneSequencePlayer extends unreal.UObject {
  
  /**
    Start playback forwards from the current time cursor position, using the current play rate.
  **/
  @:ufunction(BlueprintCallable) @:final public function Play() : Void;
  
  /**
    Reverse playback.
  **/
  @:ufunction(BlueprintCallable) @:final public function PlayReverse() : Void;
  
  /**
    Changes the direction of playback (go in reverse if it was going forward, or vice versa)
  **/
  @:ufunction(BlueprintCallable) @:final public function ChangePlaybackDirection() : Void;
  
  /**
    Start playback from the current time cursor position, looping the specified number of times.
    @param NumLoops - The number of loops to play. -1 indicates infinite looping.
  **/
  @:ufunction(BlueprintCallable) @:final public function PlayLooping(NumLoops : unreal.Int32 = -1) : Void;
  
  /**
    Pause playback.
  **/
  @:ufunction(BlueprintCallable) @:final public function Pause() : Void;
  
  /**
    Scrub playback.
  **/
  @:ufunction(BlueprintCallable) @:final public function Scrub() : Void;
  
  /**
    Stop playback.
  **/
  @:ufunction(BlueprintCallable) @:final public function Stop() : Void;
  
  /**
    Go to end of the sequence and stop. Adheres to 'When Finished' section rules.
  **/
  @:ufunction(BlueprintCallable) @:final public function GoToEndAndStop() : Void;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaybackPosition() : unreal.Float32;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetLength() : unreal.Float32;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaybackStart() : unreal.Float32;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaybackEnd() : unreal.Float32;
  @:ufunction(BlueprintCallable) @:final public function SetPlaybackPosition(NewPlaybackPosition : unreal.Float32) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetPlaybackRange(NewStartTime : unreal.Float32, NewEndTime : unreal.Float32) : Void;
  @:ufunction(BlueprintCallable) @:final public function JumpToPosition(NewPlaybackPosition : unreal.Float32) : Void;
  
  /**
    Get the current playback position
    @return The current playback position
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetCurrentTime() : unreal.FQualifiedFrameTime;
  
  /**
    Get the total duration of the sequence
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDuration() : unreal.FQualifiedFrameTime;
  
  /**
    Get this sequence's duration in frames
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetFrameDuration() : unreal.Int32;
  
  /**
    Get this sequence's display rate.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetFrameRate() : unreal.FFrameRate;
  
  /**
    Set the frame-rate that this player should play with, making all frame numbers in the specified time-space
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFrameRate(FrameRate : unreal.FFrameRate) : Void;
  
  /**
    Get the offset within the level sequence to start playing
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetStartTime() : unreal.FQualifiedFrameTime;
  
  /**
    Get the offset within the level sequence to finish playing
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetEndTime() : unreal.FQualifiedFrameTime;
  
  /**
    Set the valid play range for this sequence, determined by a starting frame number (in this sequence player's plaback frame), and a number of frames duration
    
    @param StartFrame      The frame number to start playing back the sequence
    @param Duration        The number of frames to play
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFrameRange(StartFrame : unreal.Int32, Duration : unreal.Int32) : Void;
  
  /**
    Set the valid play range for this sequence, determined by a starting time  and a duration (in seconds)
    
    @param StartTime       The time to start playing back the sequence in seconds
    @param Duration        The length to play for
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTimeRange(StartTime : unreal.Float32, Duration : unreal.Float32) : Void;
  
  /**
    Play the sequence from the current time, to the specified frame position
    
    @param NewPosition     The new frame time to play to
  **/
  @:ufunction(BlueprintCallable) @:final public function PlayToFrame(NewPosition : unreal.FFrameTime) : Void;
  
  /**
    Scrub the sequence from the current time, to the specified frame position
    
    @param NewPosition     The new frame time to scrub to
  **/
  @:ufunction(BlueprintCallable) @:final public function ScrubToFrame(NewPosition : unreal.FFrameTime) : Void;
  
  /**
    Jump to the specified frame position, without evaluating the sequence in between the current and desired time (as if in a paused state)
    
    @param NewPosition     The new frame time to jump to
  **/
  @:ufunction(BlueprintCallable) @:final public function JumpToFrame(NewPosition : unreal.FFrameTime) : Void;
  
  /**
    Play the sequence from the current time, to the specified time in seconds
    
    @param TimeInSeconds   The desired time in seconds
  **/
  @:ufunction(BlueprintCallable) @:final public function PlayToSeconds(TimeInSeconds : unreal.Float32) : Void;
  
  /**
    Scrub the sequence from the current time, to the specified time in seconds
    
    @param TimeInSeconds   The desired time in seconds
  **/
  @:ufunction(BlueprintCallable) @:final public function ScrubToSeconds(TimeInSeconds : unreal.Float32) : Void;
  
  /**
    Jump to the specified time in seconds, without evaluating the sequence in between the current and desired time (as if in a paused state)
    
    @param TimeInSeconds   The desired time in seconds
  **/
  @:ufunction(BlueprintCallable) @:final public function JumpToSeconds(TimeInSeconds : unreal.Float32) : Void;
  
  /**
    Check whether the sequence is actively playing.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsPlaying() : Bool;
  
  /**
    Check whether the sequence is paused.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsPaused() : Bool;
  
  /**
    Check whether playback is reversed.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsReversed() : Bool;
  
  /**
    Get the playback rate of this player.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlayRate() : unreal.Float32;
  
  /**
    Set the playback rate of this player. Negative values will play the animation in reverse.
    @param PlayRate - The new rate of playback for the animation.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetPlayRate(PlayRate : unreal.Float32) : Void;
  
  /**
    Set whether to disable camera cuts
  **/
  @:ufunction(BlueprintCallable) @:final public function SetDisableCameraCuts(bInDisableCameraCuts : Bool) : Void;
  
  /**
    Set whether to disable camera cuts
  **/
  @:ufunction(BlueprintCallable) @:final public function GetDisableCameraCuts() : Bool;
  
  /**
    The root template instance we're evaluating
  **/
  @:uproperty private var RootTemplateInstance : unreal.moviescene.FMovieSceneRootEvaluationTemplateInstance;
  
  /**
    Specific playback settings for the animation.
  **/
  @:uproperty private var PlaybackSettings : unreal.moviescene.FMovieSceneSequencePlaybackSettings;
  
  /**
    The number of times we have looped in the current playback
  **/
  @:uproperty private var CurrentNumLoops : unreal.Int32;
  
  /**
    Time (in playback frames) at which to stop playing the sequence (defaults to the upper bound of the sequence's play range)
  **/
  @:uproperty private var DurationFrames : unreal.Int32;
  
  /**
    Time (in playback frames) at which to start playing the sequence (defaults to the lower bound of the sequence's play range)
  **/
  @:uproperty private var StartTime : unreal.FFrameNumber;
  
  /**
    The sequence to play back
  **/
  @:uproperty private var Sequence : unreal.moviescene.UMovieSceneSequence;
  
  /**
    Movie player status.
  **/
  @:uproperty private var Status : unreal.moviescene.EMovieScenePlayerStatus;
  
  /**
    Event triggered when the level sequence player finishes naturally (without explicitly calling stop)
  **/
  @:uproperty public var OnFinished : unreal.moviescene.FOnMovieSceneSequencePlayerEvent;
  
  /**
    Event triggered when the level sequence player is paused
  **/
  @:uproperty public var OnPause : unreal.moviescene.FOnMovieSceneSequencePlayerEvent;
  
  /**
    Event triggered when the level sequence player is stopped
  **/
  @:uproperty public var OnStop : unreal.moviescene.FOnMovieSceneSequencePlayerEvent;
  
  /**
    Event triggered when the level sequence player is played in reverse
  **/
  @:uproperty public var OnPlayReverse : unreal.moviescene.FOnMovieSceneSequencePlayerEvent;
  
  /**
    Event triggered when the level sequence player is played
  **/
  @:uproperty public var OnPlay : unreal.moviescene.FOnMovieSceneSequencePlayerEvent;
  
  /**
    Retrieve all objects currently bound to the specified binding identifier
  **/
  @:ufunction(BlueprintCallable) @:final public function GetBoundObjects(ObjectBinding : unreal.moviescene.FMovieSceneObjectBindingID) : unreal.TArray<unreal.UObject>;
  
  /**
    Get the object bindings for the requested object
  **/
  @:ufunction(BlueprintCallable) @:final public function GetObjectBindings(InObject : unreal.UObject) : unreal.TArray<unreal.moviescene.FMovieSceneObjectBindingID>;
  
}
