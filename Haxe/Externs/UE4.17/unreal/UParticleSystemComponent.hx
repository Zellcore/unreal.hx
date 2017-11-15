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
  A particle emitter.
**/
@:glueCppIncludes("Particles/ParticleSystemComponent.h")
@:uextern @:uclass extern class UParticleSystemComponent extends unreal.UPrimitiveComponent {
  
  /**
    Options for how we handle our scale when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
    @see bAutoManageAttachment, EAttachmentRule
  **/
  @:uproperty public var AutoAttachScaleRule : unreal.EAttachmentRule;
  
  /**
    Options for how we handle our rotation when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
    @see bAutoManageAttachment, EAttachmentRule
  **/
  @:uproperty public var AutoAttachRotationRule : unreal.EAttachmentRule;
  
  /**
    Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
    @see bAutoManageAttachment, EAttachmentRule
  **/
  @:uproperty public var AutoAttachLocationRule : unreal.EAttachmentRule;
  
  /**
    DEPRECATED: Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
    @see bAutoManageAttachment, EAttachLocation::Type
  **/
  @:deprecated @:uproperty public var AutoAttachLocationType_DEPRECATED : unreal.EAttachLocation;
  
  /**
    Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachment is true.
    @see bAutoManageAttachment
  **/
  @:uproperty public var AutoAttachSocketName : unreal.FName;
  
  /**
    Component we automatically attach to when activated, if bAutoManageAttachment is true.
    If null during registration, we assign the existing AttachParent and defer attachment until we activate.
    @see bAutoManageAttachment
  **/
  @:uproperty public var AutoAttachParent : unreal.TWeakObjectPtr<unreal.USceneComponent>;
  
  /**
    Called when the particle system is done
  **/
  @:uproperty public var OnSystemFinished : unreal.FOnSystemFinished;
  
  /**
    Scales DeltaTime in UParticleSystemComponent::Tick(...)
  **/
  @:uproperty public var CustomTimeDilation : unreal.Float32;
  
  /**
    Array of replay clips for this particle system component.  These are serialized to disk.  You really should never add anything to this in the editor.  It's exposed so that you can delete clips if you need to, but be careful when doing so!
  **/
  @:uproperty public var ReplayClips : unreal.TArray<unreal.UParticleSystemReplay>;
  
  /**
    Flag indicating that dynamic updating of render data should NOT occur during Tick.
    This is used primarily to allow for warming up and simulated effects to a certain state.
  **/
  @:uproperty public var bSkipUpdateDynamicDataDuringTick : Bool;
  
  /**
    The method of LOD level determination to utilize for this particle system
  **/
  @:uproperty public var LODMethod : unreal.ParticleSystemLODMethod;
  
  /**
    indicates that the component's LODMethod overrides the Template's
  **/
  @:uproperty public var bOverrideLODMethod : Bool;
  #if WITH_EDITORONLY_DATA
  
  /**
    Used for applying Cascade's detail mode setting to in-level particle systems
  **/
  @:uproperty public var EditorDetailMode : unreal.Int32;
  
  /**
    INTERNAL. Used by the editor to set the LODLevel
  **/
  @:uproperty public var EditorLODLevel : unreal.Int32;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Time between forced UpdateTransforms for systems that use dynamically calculated bounds,
    Which is effectively how often the bounds are shrunk.
  **/
  @:uproperty public var MaxTimeBeforeForceUpdateTransform : unreal.Float32;
  
  /**
    Number of seconds of emitter not being rendered that need to pass before it
    no longer gets ticked/ becomes inactive.
  **/
  @:uproperty public var SecondsBeforeInactive : unreal.Float32;
  @:uproperty public var bWarmingUp : Bool;
  @:uproperty public var WarmupTickRate : unreal.Float32;
  @:uproperty public var WarmupTime : unreal.Float32;
  @:uproperty public var PartSysVelocity : unreal.FVector;
  @:uproperty public var OldPosition : unreal.FVector;
  @:uproperty public var OnParticleCollide : unreal.FParticleCollisionSignature;
  @:uproperty public var OnParticleDeath : unreal.FParticleDeathSignature;
  @:uproperty public var OnParticleBurst : unreal.FParticleBurstSignature;
  @:uproperty public var OnParticleSpawn : unreal.FParticleSpawnSignature;
  
  /**
    Array holding name instance parameters for this ParticleSystemComponent.
    Parameters can be used in Cascade using DistributionFloat/VectorParticleParameters.
  **/
  @:uproperty public var InstanceParameters : unreal.TArray<unreal.FParticleSysParam>;
  
  /**
    The significance this component requires of it's emitters for them to be enabled.
  **/
  @:uproperty public var RequiredSignificance : unreal.EParticleSignificanceLevel;
  
  /**
    True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.
    This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).
    When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.
    This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.
    @see AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType
  **/
  @:uproperty public var bAutoManageAttachment : Bool;
  
  /**
    If true, this Particle System will be available for recycling after it has completed. Auto-destroyed systems cannot be recycled.
    Some systems (currently particle trail effects) can recycle components to avoid respawning them to play new effects.
    This is only an optimization and does not change particle system behavior, aside from not triggering normal component initialization events more than once.
  **/
  @:uproperty public var bAllowRecycling : Bool;
  
  /**
    whether to update the particle system on dedicated servers
  **/
  @:uproperty public var bUpdateOnDedicatedServer : Bool;
  @:uproperty public var bResetOnDetach : Bool;
  
  /**
    The skeletal mesh components used with the socket location module.
    This is to prevent them from being garbage collected.
  **/
  @:uproperty public var SkelMeshComponents : unreal.TArray<unreal.USkeletalMeshComponent>;
  @:uproperty public var EmitterMaterials : unreal.TArray<unreal.UMaterialInterface>;
  @:uproperty public var Template : unreal.UParticleSystem;
  
  /**
    DEPRECATED: Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.
    @param  Parent                       Component to attach to.
    @param  SocketName           Socket on Parent to attach to.
    @param  LocationType         Option for how we handle our location when we attach to Parent.
    @see bAutoManageAttachment, AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType
  **/
  @:ufunction(BlueprintCallable) @:final public function SetAutoAttachParams(Parent : unreal.USceneComponent, @:opt("None") SocketName : unreal.FName, LocationType : unreal.EAttachLocation = KeepRelativeOffset) : Void;
  
  /**
    Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.
    @param  Parent                       Component to attach to.
    @param  SocketName           Socket on Parent to attach to.
    @param  LocationRule         Option for how we handle our location when we attach to Parent.
    @param  RotationRule         Option for how we handle our rotation when we attach to Parent.
    @param  ScaleRule            Option for how we handle our scale when we attach to Parent.
    @see bAutoManageAttachment, AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule
  **/
  @:ufunction(BlueprintCallable) @:final public function SetAutoAttachmentParameters(Parent : unreal.USceneComponent, SocketName : unreal.FName, LocationRule : unreal.EAttachmentRule, RotationRule : unreal.EAttachmentRule, ScaleRule : unreal.EAttachmentRule) : Void;
  
  /**
    Set the beam end point
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewEndPoint                     The value to set it to
  **/
  @:ufunction(BlueprintCallable) public function SetBeamEndPoint(EmitterIndex : unreal.Int32, NewEndPoint : unreal.FVector) : Void;
  
  /**
    Set the beam source point
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewSourcePoint          The value to set it to
    @param  SourceIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamSourcePoint(EmitterIndex : unreal.Int32, NewSourcePoint : unreal.FVector, SourceIndex : unreal.Int32) : Void;
  
  /**
    Set the beam source tangent
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewTangentPoint         The value to set it to
    @param  SourceIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamSourceTangent(EmitterIndex : unreal.Int32, NewTangentPoint : unreal.FVector, SourceIndex : unreal.Int32) : Void;
  
  /**
    Set the beam source strength
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewSourceStrength       The value to set it to
    @param  SourceIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamSourceStrength(EmitterIndex : unreal.Int32, NewSourceStrength : unreal.Float32, SourceIndex : unreal.Int32) : Void;
  
  /**
    Set the beam target point
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewTargetPoint          The value to set it to
    @param  TargetIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamTargetPoint(EmitterIndex : unreal.Int32, NewTargetPoint : unreal.FVector, TargetIndex : unreal.Int32) : Void;
  
  /**
    Set the beam target tangent
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewTangentPoint         The value to set it to
    @param  TargetIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamTargetTangent(EmitterIndex : unreal.Int32, NewTangentPoint : unreal.FVector, TargetIndex : unreal.Int32) : Void;
  
  /**
    Set the beam target strength
    
    @param  EmitterIndex            The index of the emitter to set it on
    @param  NewTargetStrength       The value to set it to
    @param  TargetIndex                     Which beam within the emitter to set it on
  **/
  @:ufunction(BlueprintCallable) public function SetBeamTargetStrength(EmitterIndex : unreal.Int32, NewTargetStrength : unreal.Float32, TargetIndex : unreal.Int32) : Void;
  
  /**
    Get the beam end point
    
    @param  EmitterIndex            The index of the emitter to get the value of
    
    @return true            EmitterIndex is valid and End point is set - OutEndPoint is valid
                    false           EmitterIndex invalid or End point is not set - OutEndPoint is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamEndPoint(EmitterIndex : unreal.Int32, OutEndPoint : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Get the beam source point
    
    @param  EmitterIndex            The index of the emitter to get
    @param  SourceIndex                     Which beam within the emitter to get
    @param  OutSourcePoint          Value of source point
    
    @return true            EmitterIndex and SourceIndex are valid - OutSourcePoint is valid
                    false           EmitterIndex or SourceIndex is invalid - OutSourcePoint is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamSourcePoint(EmitterIndex : unreal.Int32, SourceIndex : unreal.Int32, OutSourcePoint : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Get the beam source tangent
    
    @param  EmitterIndex            The index of the emitter to get
    @param  SourceIndex                     Which beam within the emitter to get
    @param  OutTangentPoint         Value of source tangent
    
    @return true            EmitterIndex and SourceIndex are valid - OutTangentPoint is valid
                    false           EmitterIndex or SourceIndex is invalid - OutTangentPoint is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamSourceTangent(EmitterIndex : unreal.Int32, SourceIndex : unreal.Int32, OutTangentPoint : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Get the beam source strength
    
    @param  EmitterIndex            The index of the emitter to get
    @param  SourceIndex                     Which beam within the emitter to get
    @param  OutSourceStrength               Value of source tangent
    
    @return true            EmitterIndex and SourceIndex are valid - OutSourceStrength is valid
                    false           EmitterIndex or SourceIndex is invalid - OutSourceStrength is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamSourceStrength(EmitterIndex : unreal.Int32, SourceIndex : unreal.Int32, OutSourceStrength : unreal.Float32) : Bool;
  
  /**
    Get the beam target point
    
    @param  EmitterIndex            The index of the emitter to get
    @param  TargetIndex                     Which beam within the emitter to get
    @param  OutTargetPoint          Value of target point
    
    @return true            EmitterIndex and TargetIndex are valid - OutTargetPoint is valid
                    false           EmitterIndex or TargetIndex is invalid - OutTargetPoint is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamTargetPoint(EmitterIndex : unreal.Int32, TargetIndex : unreal.Int32, OutTargetPoint : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Get the beam target tangent
    
    @param  EmitterIndex            The index of the emitter to get
    @param  TargetIndex                     Which beam within the emitter to get
    @param  OutTangentPoint         Value of target tangent
    
    @return true            EmitterIndex and TargetIndex are valid - OutTangentPoint is valid
                    false           EmitterIndex or TargetIndex is invalid - OutTangentPoint is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamTargetTangent(EmitterIndex : unreal.Int32, TargetIndex : unreal.Int32, OutTangentPoint : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Get the beam target strength
    
    @param  EmitterIndex            The index of the emitter to get
    @param  TargetIndex                     Which beam within the emitter to get
    @param  OutTargetStrength       Value of target tangent
    
    @return true            EmitterIndex and TargetIndex are valid - OutTargetStrength is valid
                    false           EmitterIndex or TargetIndex is invalid - OutTargetStrength is invalid
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetBeamTargetStrength(EmitterIndex : unreal.Int32, TargetIndex : unreal.Int32, OutTargetStrength : unreal.Float32) : Bool;
  
  /**
    Enables/Disables a sub-emitter
    
    @param  EmitterName                     The name of the sub-emitter to set it on
    @param  bNewEnableState         The value to set it to
  **/
  @:ufunction(BlueprintCallable) public function SetEmitterEnable(EmitterName : unreal.FName, bNewEnableState : Bool) : Void;
  
  /**
    Change a named float parameter
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFloatParameter(ParameterName : unreal.FName, Param : unreal.Float32) : Void;
  
  /**
    Set a named vector instance parameter on this ParticleSystemComponent.
    Updates the parameter if it already exists, or creates a new entry if not.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetVectorParameter(ParameterName : unreal.FName, Param : unreal.FVector) : Void;
  
  /**
    Set a named color instance parameter on this ParticleSystemComponent.
    Updates the parameter if it already exists, or creates a new entry if not.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetColorParameter(ParameterName : unreal.FName, Param : unreal.FLinearColor) : Void;
  
  /**
    Set a named actor instance parameter on this ParticleSystemComponent.
    Updates the parameter if it already exists, or creates a new entry if not.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetActorParameter(ParameterName : unreal.FName, Param : unreal.AActor) : Void;
  
  /**
    Set a named material instance parameter on this ParticleSystemComponent.
    Updates the parameter if it already exists, or creates a new entry if not.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetMaterialParameter(ParameterName : unreal.FName, Param : unreal.UMaterialInterface) : Void;
  
  /**
    Change the ParticleSystem used by this ParticleSystemComponent
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTemplate(NewTemplate : unreal.UParticleSystem) : Void;
  
  /**
    Get the current number of active particles in this system
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetNumActiveParticles() : unreal.Int32;
  
  /**
    Begins all trail emitters in this component.
    
    @param        InFirstSocketName       The name of the first socket for the trail.
    @param        InSecondSocketName      The name of the second socket for the trail.
    @param        InWidthMode                     How the width value is applied to the trail.
    @param        InWidth                         The width of the trail.
  **/
  @:ufunction(BlueprintCallable) @:final public function BeginTrails(InFirstSocketName : unreal.FName, InSecondSocketName : unreal.FName, InWidthMode : unreal.ETrailWidthMode, InWidth : unreal.Float32) : Void;
  
  /**
    Ends all trail emitters in this component.
  **/
  @:ufunction(BlueprintCallable) @:final public function EndTrails() : Void;
  
  /**
    Sets the defining data for all trails in this component.
    
    @param        InFirstSocketName       The name of the first socket for the trail.
    @param        InSecondSocketName      The name of the second socket for the trail.
    @param        InWidthMode                     How the width value is applied to the trail.
    @param        InWidth                         The width of the trail.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTrailSourceData(InFirstSocketName : unreal.FName, InSecondSocketName : unreal.FName, InWidthMode : unreal.ETrailWidthMode, InWidth : unreal.Float32) : Void;
  
  /**
    Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.
    @param Name - The slot name of the material to replace.  If invalid, the material is unchanged and NULL is returned.
  **/
  @:ufunction(BlueprintCallable) public function CreateNamedDynamicMaterialInstance(InName : unreal.FName, SourceMaterial : unreal.UMaterialInterface) : unreal.UMaterialInstanceDynamic;
  
  /**
    Returns a named material. If this named material is not found, returns NULL.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetNamedMaterial(InName : unreal.FName) : unreal.UMaterialInterface;
  
  /**
    Record a kismet event.
    
    @param  InEventName                             The name of the event that fired.
    @param  InEmitterTime                   The emitter time when the event fired.
    @param  InLocation                              The location of the particle when the event fired.
    @param  InVelocity                              The velocity of the particle when the event fired.
    @param  InNormal                                Normal vector of the collision in coordinate system of the returner. Zero=none.
  **/
  @:ufunction(BlueprintCallable) @:final public function GenerateParticleEvent(InEventName : unreal.Const<unreal.FName>, InEmitterTime : unreal.Float32, InLocation : unreal.Const<unreal.FVector>, InDirection : unreal.Const<unreal.FVector>, InVelocity : unreal.Const<unreal.FVector>) : Void;
  
}
