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
  ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.
  ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.
  
  @see [ActorComponent](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#actorcomponents)
  @see USceneComponent
  @see UPrimitiveComponent
**/
@:glueCppIncludes("Components/ActorComponent.h")
@:uextern @:uclass extern class UActorComponent extends unreal.UObject implements unreal.IInterface_AssetUserData {
  @:uproperty public var OnComponentDeactivated : unreal.FActorComponentDeactivateSignature;
  @:uproperty public var OnComponentActivated : unreal.FActorComponentActivatedSignature;
  @:uproperty public var CreationMethod : unreal.EComponentCreationMethod;
  
  /**
    If true, the component will be excluded from non-editor builds
  **/
  @:uproperty public var bIsEditorOnly : Bool;
  @:uproperty public var bEditableWhenInherited : Bool;
  
  /**
    Whether the component is currently active.
  **/
  @:uproperty public var bIsActive : Bool;
  
  /**
    Whether the component is activated at creation or must be explicitly activated.
  **/
  @:uproperty public var bAutoActivate : Bool;
  
  /**
    True if this component was created as an instance component
  **/
  @:deprecated @:uproperty public var bInstanceComponent_DEPRECATED : Bool;
  
  /**
    True if this component was created by a construction script, and will be destroyed by DestroyConstructedComponents
  **/
  @:deprecated @:uproperty public var bCreatedByConstructionScript_DEPRECATED : Bool;
  
  /**
    Array of user data stored with the component
  **/
  @:uproperty private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  
  /**
    Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.
  **/
  @:uproperty public var ComponentTags : unreal.TArray<unreal.FName>;
  
  /**
    Main tick function for the Actor
  **/
  @:uproperty public var PrimaryComponentTick(default,never) : unreal.FActorComponentTickFunction;
  
  /**
    Returns whether the component is in the process of being destroyed.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsBeingDestroyed() : Bool;
  @:ufunction @:final public function OnRep_IsActive() : Void;
  
  /**
    Follow the Outer chain to get the  AActor  that 'Owns' this component
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetOwner() : unreal.AActor;
  
  /**
    See if this component contains the supplied tag
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function ComponentHasTag(Tag : unreal.FName) : Bool;
  
  /**
    Activates the SceneComponent
    @param bReset - The value to assign to HiddenGame.
  **/
  @:ufunction(BlueprintCallable) public function Activate(bReset : Bool = false) : Void;
  
  /**
    Deactivates the SceneComponent.
  **/
  @:ufunction(BlueprintCallable) public function Deactivate() : Void;
  
  /**
    Sets whether the component is active or not
    @param bNewActive - The new active state of the component
  **/
  @:ufunction(BlueprintCallable) public function SetActive(bNewActive : Bool, bReset : Bool = false) : Void;
  
  /**
    Toggles the active state of the component
  **/
  @:ufunction(BlueprintCallable) public function ToggleActive() : Void;
  
  /**
    Returns whether the component is active or not
    @return - The active state of the component.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function IsActive() : Bool;
  
  /**
    Sets whether the component should be auto activate or not. Only safe during construction scripts.
    @param bNewAutoActivate - The new auto activate state of the component
  **/
  @:ufunction(BlueprintCallable) public function SetAutoActivate(bNewAutoActivate : Bool) : Void;
  
  /**
    Sets whether this component can tick when paused.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTickableWhenPaused(bTickableWhenPaused : Bool) : Void;
  
  /**
    Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)
  **/
  @:ufunction(BlueprintCallable) @:final public function SetIsReplicated(ShouldReplicate : Bool) : Void;
  
  /**
    Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay
    or when the component is dynamically created if the Actor has already BegunPlay.
  **/
  @:ufunction(BlueprintImplementableEvent) public function ReceiveBeginPlay() : Void;
  
  /**
    Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
  **/
  @:ufunction(BlueprintImplementableEvent) public function ReceiveEndPlay(EndPlayReason : unreal.EEndPlayReason) : Void;
  
  /**
    Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered
    
    @param       bEnabled - Whether it should be enabled or not
  **/
  @:ufunction(BlueprintCallable) public function SetComponentTickEnabled(bEnabled : Bool) : Void;
  
  /**
    Returns whether this component has tick enabled or not
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsComponentTickEnabled() : Bool;
  
  /**
    Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick.
    @param TickInterval   The duration between ticks for this component's primary tick function
  **/
  @:ufunction(BlueprintCallable) @:final public function SetComponentTickInterval(TickInterval : unreal.Float32) : Void;
  
  /**
    Returns whether this component has tick enabled or not
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetComponentTickInterval() : unreal.Float32;
  
  /**
    Unregister and mark for pending kill a component.  This may not be used to destroy a component is owned by an actor other than the one calling the function.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DestroyComponent(Object : unreal.UObject) : Void;
  
  /**
    Changes the ticking group for this component
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTickGroup(NewTickGroup : unreal.ETickingGroup) : Void;
  
  /**
    Make this component tick after PrerequisiteActor
  **/
  @:ufunction(BlueprintCallable) public function AddTickPrerequisiteActor(PrerequisiteActor : unreal.AActor) : Void;
  
  /**
    Make this component tick after PrerequisiteComponent.
  **/
  @:ufunction(BlueprintCallable) public function AddTickPrerequisiteComponent(PrerequisiteComponent : unreal.UActorComponent) : Void;
  
  /**
    Remove tick dependency on PrerequisiteActor.
  **/
  @:ufunction(BlueprintCallable) public function RemoveTickPrerequisiteActor(PrerequisiteActor : unreal.AActor) : Void;
  
  /**
    Remove tick dependency on PrerequisiteComponent.
  **/
  @:ufunction(BlueprintCallable) public function RemoveTickPrerequisiteComponent(PrerequisiteComponent : unreal.UActorComponent) : Void;
  
  /**
    Event called every frame
  **/
  @:ufunction(BlueprintImplementableEvent) public function ReceiveTick(DeltaSeconds : unreal.Float32) : Void;
  // Interface_AssetUserData interface implementation
  
}
