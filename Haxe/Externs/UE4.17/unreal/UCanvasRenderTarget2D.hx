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
  CanvasRenderTarget2D is 2D render target which exposes a Canvas interface to allow you to draw elements onto
  it directly.  Use FindCanvasRenderTarget2D() to find or create a render target texture by unique name, then
  bind a function to the OnCanvasRenderTargetUpdate delegate which will be called when the render target is
  updated.  If you need to repaint your canvas every single frame, simply call UpdateResource() on it from a Tick
  function.  Also, remember to hold onto your new canvas render target with a reference so that it doesn't get
  garbage collected.
**/
@:glueCppIncludes("Engine/CanvasRenderTarget2D.h")
@:uextern @:uclass extern class UCanvasRenderTarget2D extends unreal.UTextureRenderTarget2D {
  
  /**
    Updates the the canvas render target texture's resource. This is where the render target will create or
    find a canvas object to use.  It also calls UpdateResourceImmediate() to clear the render target texture
    from the deferred rendering list, to stop the texture from being cleared the next frame. From there it
    will ask the rendering thread to set up the RHI viewport. The canvas is then set up for rendering and
    then the user's update delegate is called.  The canvas is then flushed and the RHI resolves the
    texture to make it available for rendering.
  **/
  @:ufunction(BlueprintCallable) public function UpdateResource() : Void;
  
  /**
    Creates a new canvas render target and initializes it to the specified dimensions
    
    @param       WorldContextObject      The world where this render target will be rendered for
    @param       CanvasRenderTarget2DClass       Class of the render target.  Unless you want to use a special sub-class, you can simply pass UCanvasRenderTarget2D::StaticClass() here.
    @param       Width                           Width of the render target.
    @param       Height                          Height of the render target.
    
    @return                                              Returns the instanced render target.
  **/
  @:ufunction(BlueprintCallable) static public function CreateCanvasRenderTarget2D(WorldContextObject : unreal.UObject, CanvasRenderTarget2DClass : unreal.TSubclassOf<unreal.UCanvasRenderTarget2D>, Width : unreal.Int32 = 1024, Height : unreal.Int32 = 1024) : unreal.UCanvasRenderTarget2D;
  
  /**
    Allows a Blueprint to implement how this Canvas Render Target 2D should be updated.
    
    @param       Canvas                          Canvas object that can be used to paint to the render target
    @param       Width                           Width of the render target.
    @param       Height                          Height of the render target.
  **/
  @:ufunction(BlueprintImplementableEvent) public function ReceiveUpdate(Canvas : unreal.UCanvas, Width : unreal.Int32, Height : unreal.Int32) : Void;
  
  /**
    Gets a specific render target's size from the global map of canvas render targets.
    
    @param       Width   Output variable for the render target's width
    @param       Height  Output variable for the render target's height
  **/
  @:ufunction(BlueprintCallable) @:final public function GetSize(Width : unreal.Int32, Height : unreal.Int32) : Void;
  
  /**
    The world this render target will be used with
  **/
  @:uproperty private var World : unreal.TWeakObjectPtr<unreal.UWorld>;
  
  /**
    Called when this Canvas Render Target is asked to update its texture resource.
  **/
  @:uproperty public var OnCanvasRenderTargetUpdate : unreal.FOnCanvasRenderTargetUpdate;
  
}
