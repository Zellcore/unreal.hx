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
package unreal.targetdeviceservices;

/**
  Implements a message for committing a deployment transaction.
  
  To launch an arbitrary executable on a device use the FTargetDeviceServiceRunExecutable message instead.
  
  @see FTargetDeviceServiceLaunchFinished
**/
@:umodule("TargetDeviceServices")
@:glueCppIncludes("Classes/TargetDeviceServiceMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTargetDeviceServiceLaunchApp {
  
  /**
    Holds optional command line parameters for the application.
  **/
  @:uproperty public var Params : unreal.FString;
  
  /**
    The application's build configuration, i.e. Debug or Shipping.
  **/
  @:uproperty public var BuildConfiguration : unreal.UInt8;
  
  /**
    Holds the identifier of the application to launch.
    
    The semantics of this identifier are target platform specific. In some cases it may be
    a GUID, in other cases it may be the path to the application or some other means of
    identifying the application. Application identifiers are returned from target device
    services as result of successful deployment transactions.
  **/
  @:uproperty public var AppID : unreal.FString;
  
  /**
    Holds the variant identifier of the target device to use.
  **/
  @:uproperty public var Variant : unreal.FName;
  
}
