/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  Determines the behavior this node will use when updating and evaluating.
**/
@:glueCppIncludes("Animation/AnimNode_TransitionPoseEvaluator.h")
@:uname("EEvaluatorMode.Mode")
@:uextern @:uenum extern enum EEvaluatorMode {
  
  /**
    DataSource is ticked and evaluated every frame.
    @DisplayName Standard
  **/
  @DisplayName("Standard")
  EM_Standard;
  
  /**
    DataSource is never ticked and only evaluated on the first frame. Every frame after uses the cached pose from the first frame.
    @DisplayName Freeze
  **/
  @DisplayName("Freeze")
  EM_Freeze;
  
  /**
    DataSource is ticked and evaluated for a given number of frames, then freezes after and uses the cached pose for future frames.
    @DisplayName Delayed Freeze
  **/
  @DisplayName("Delayed Freeze")
  EM_DelayedFreeze;
  
}