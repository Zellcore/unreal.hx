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
package unreal.aimodule;

/**
  Things to remember:
  * Actions are created paused
**/
@:umodule("AIModule")
@:glueCppIncludes("Actions/PawnAction.h")
@:uextern @:uclass extern class UPawnAction extends unreal.UObject {
  
  /**
    @Note: THIS IS HERE _ONLY_ BECAUSE OF THE WAY AI MESSAGING IS CURRENTLY IMPLEMENTED. WILL GO AWAY!
  **/
  @:uproperty private var BrainComp : unreal.aimodule.UBrainComponent;
  
  /**
    Blueprint interface
  **/
  @:ufunction(BlueprintCallable) @:final public function GetActionPriority() : unreal.aimodule.EAIRequestPriority;
  @:ufunction(BlueprintCallable) static public function CreateActionInstance(WorldContextObject : unreal.UObject, ActionClass : unreal.TSubclassOf<unreal.aimodule.UPawnAction>) : unreal.aimodule.UPawnAction;
  @:ufunction(BlueprintCallable) private function Finish(WithResult : unreal.aimodule.EPawnActionResult) : Void;
  
}