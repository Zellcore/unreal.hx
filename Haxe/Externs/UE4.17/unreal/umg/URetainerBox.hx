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
package unreal.umg;

/**
  The Retainer Box renders children widgets to a render target first before
  later rendering that render target to the screen.  This allows both frequency
  and phase to be controlled so that the UI can actually render less often than the
  frequency of the main game render.  It also has the side benefit of allow materials
  to be applied to the render target after drawing the widgets to apply a simple post process.
  
  * Single Child
  * Caching / Performance
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class URetainerBox extends unreal.umg.UContentWidget {
  
  /**
    The texture sampler parameter of the @EffectMaterial, that we'll set to the render target.
  **/
  @:uproperty private var TextureParameter : unreal.FName;
  
  /**
    The effect to optionally apply to the render target.  We will set the texture sampler based on the name
    set in the @TextureParameter property.
    
    If you want to adjust transparency of the final image, make sure you set Blend Mode to AlphaComposite (Pre-Multiplied Alpha)
    and make sure to multiply the alpha you're apply across the surface to the color and the alpha of the render target, otherwise
    you won't see the expected color.
  **/
  @:uproperty private var EffectMaterial : unreal.UMaterialInterface;
  
  /**
    The PhaseCount controls how many phases are possible know what to modulus the current frame
    count by to determine if this is the current frame to draw the widget on.
    
    If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.
    If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every
    other frame.  So in a 60Hz game, the UI would render at 30Hz.
  **/
  @:uproperty public var PhaseCount : unreal.Int32;
  
  /**
    The Phase this widget will draw on.
    
    If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame.
    If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every
    other frame.  So in a 60Hz game, the UI would render at 30Hz.
  **/
  @:uproperty public var Phase : unreal.Int32;
  
  /**
    Get the current dynamic effect material applied to the retainer box.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetEffectMaterial() : unreal.UMaterialInstanceDynamic;
  
  /**
    Set a new effect material to the retainer widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetEffectMaterial(EffectMaterial : unreal.UMaterialInterface) : Void;
  
  /**
    Sets the name of the texture parameter to set the render target to on the material.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetTextureParameter(TextureParameter : unreal.FName) : Void;
  
}
