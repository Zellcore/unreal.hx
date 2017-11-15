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
  A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model.
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Actors/DecalActor
  @see UDecalActor
**/
@:glueCppIncludes("Components/DecalComponent.h")
@:uextern @:uclass extern class UDecalComponent extends unreal.USceneComponent {
  
  /**
    Decal size in local space (does not include the component scale), technically redundant but there for convenience
  **/
  @:uproperty public var DecalSize : unreal.FVector;
  
  /**
    Automatically destroys the owning actor after fully fading out.
  **/
  @:uproperty public var bDestroyOwnerAfterFade : Bool;
  
  /**
    Time in seconds for the decal to fade out. Set fade duration and start delay to 0 to make persistent.
  **/
  @:uproperty public var FadeDuration : unreal.Float32;
  
  /**
    Time in seconds to wait before beginning to fade out the decal. Set fade duration and start delay to 0 to make persistent.
  **/
  @:uproperty public var FadeStartDelay : unreal.Float32;
  @:uproperty public var FadeScreenSize : unreal.Float32;
  
  /**
    Controls the order in which decal elements are rendered.  Higher values draw later (on top).
    Setting many different sort orders on many different decals prevents sorting by state and can reduce performance.
  **/
  @:uproperty public var SortOrder : unreal.Int32;
  
  /**
    Decal material.
  **/
  @:uproperty public var DecalMaterial : unreal.UMaterialInterface;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetFadeStartDelay() : unreal.Float32;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetFadeDuration() : unreal.Float32;
  
  /**
    Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out.
    The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material
    node to control the look of "fading out."
    
    @param StartDelay - Time in seconds to wait before beginning to fade out the decal.
    @param Duration - Time in second for the decal to fade out.
    @param DestroyOwnerAfterFade - Should the owning actor automatically be destroyed after it is completely faded out.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFadeOut(StartDelay : unreal.Float32, Duration : unreal.Float32, DestroyOwnerAfterFade : Bool = true) : Void;
  
  /**
    Set the FadeScreenSize for this decal component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFadeScreenSize(NewFadeScreenSize : unreal.Float32) : Void;
  
  /**
    Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSortOrder(Value : unreal.Int32) : Void;
  
  /**
    setting decal material on decal component. This will force the decal to reattach
  **/
  @:ufunction(BlueprintCallable) @:final public function SetDecalMaterial(NewDecalMaterial : unreal.UMaterialInterface) : Void;
  
  /**
    Accessor for decal material
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDecalMaterial() : unreal.UMaterialInterface;
  
  /**
    Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it
  **/
  @:ufunction(BlueprintCallable) public function CreateDynamicMaterialInstance() : unreal.UMaterialInstanceDynamic;
  
}
