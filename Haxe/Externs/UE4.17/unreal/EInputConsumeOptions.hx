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

@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:uname("EInputConsumeOptions")
@:uextern @:uenum extern enum EInputConsumeOptions {
  
  /**
    This component consumes all input and no components lower in the stack are processed.
  **/
  ICO_ConsumeAll;
  
  /**
    This component consumes all events for a keys it has bound (whether or not they are handled successfully).  Components lower in the stack will not receive events from these keys.
  **/
  ICO_ConsumeBoundKeys;
  
  /**
    All input events will be available to components lower in the stack.
  **/
  ICO_ConsumeNone;
  
}
