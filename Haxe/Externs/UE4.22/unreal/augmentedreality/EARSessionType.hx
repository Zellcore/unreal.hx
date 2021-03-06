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
package unreal.augmentedreality;

@:umodule("AugmentedReality")
@:glueCppIncludes("Public/ARSessionConfig.h")
@:uname("EARSessionType")
@:class @:uextern @:uenum extern enum EARSessionType {
  
  /**
    AR tracking is not supported
  **/
  None;
  
  /**
    AR session used to track orientation of the device only
  **/
  Orientation;
  
  /**
    AR meant to overlay onto the world with tracking
  **/
  World;
  
  /**
    AR meant to overlay onto a face
  **/
  Face;
  
  /**
    Tracking of images supplied by the app. No world tracking, just images
  **/
  Image;
  
  /**
    A session used to scan objects for object detection in a world tracking session
  **/
  ObjectScanning;
  
}
