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
package unreal.landscape;

@:umodule("Landscape")
@:glueCppIncludes("Classes/Landscape.h")
@:uname("ELandscapeSetupErrors")
@:uextern @:uenum extern enum ELandscapeSetupErrors {
  LSE_None;
  
  /**
    No Landscape Info available.
  **/
  LSE_NoLandscapeInfo;
  
  /**
    There was already component with same X,Y.
  **/
  LSE_CollsionXY;
  
  /**
    No Layer Info, need to add proper layers.
  **/
  LSE_NoLayerInfo;
  LSE_MAX;
  
}
