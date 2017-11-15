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
package unreal.automationmessages;

/**
  Implements a message to request the running of automation tests on a worker.
**/
@:umodule("AutomationMessages")
@:glueCppIncludes("Classes/AutomationWorkerMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAutomationWorkerRunTests {
  
  /**
    If true, send results to analytics when complete
  **/
  @:uproperty public var bSendAnalytics : Bool;
  
  /**
    Holds the name of the test to run.
  **/
  @:uproperty public var BeautifiedTestName : unreal.FString;
  
  /**
    Holds the name of the test to run.
  **/
  @:uproperty public var TestName : unreal.FString;
  @:uproperty public var RoleIndex : unreal.Int32;
  @:uproperty public var ExecutionCount : unreal.FakeUInt32;
  
}
