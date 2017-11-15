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
  A simple static text widget.
  
  * No Children
  * Text
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UTextBlock extends unreal.umg.UTextLayoutWidget {
  
  /**
    Sets the color and opacity of the text in this text block
    
    @param InColorAndOpacity             The new text color and opacity
  **/
  @:ufunction(BlueprintCallable) @:final public function SetColorAndOpacity(InColorAndOpacity : unreal.slatecore.FSlateColor) : Void;
  
  /**
    Sets the opacity of the text in this text block
    
    @param InOpacity              The new text opacity
  **/
  @:ufunction(BlueprintCallable) @:final public function SetOpacity(InOpacity : unreal.Float32) : Void;
  
  /**
    Sets the color and opacity of the text drop shadow
    Note: if opacity is zero no shadow will be drawn
    
    @param InShadowColorAndOpacity               The new drop shadow color and opacity
  **/
  @:ufunction(BlueprintCallable) @:final public function SetShadowColorAndOpacity(InShadowColorAndOpacity : unreal.FLinearColor) : Void;
  
  /**
    Sets the offset that the text drop shadow should be drawn at
    
    @param InShadowOffset                The new offset
  **/
  @:ufunction(BlueprintCallable) @:final public function SetShadowOffset(InShadowOffset : unreal.FVector2D) : Void;
  
  /**
    Dynamically set the font info for this text block
    
    @param InFontInfo THe new font info
  **/
  @:ufunction(BlueprintCallable) @:final public function SetFont(InFontInfo : unreal.slatecore.FSlateFontInfo) : Void;
  
  /**
    Set the text justification for this text block
    
    @param InJustification new justification
  **/
  @:ufunction(BlueprintCallable) @:final public function SetJustification(InJustification : unreal.slate.ETextJustify) : Void;
  
  /**
    Set the minimum desired width for this text block
    
    @param InMinDesiredWidth new minimum desired width
  **/
  @:ufunction(BlueprintCallable) @:final public function SetMinDesiredWidth(InMinDesiredWidth : unreal.Float32) : Void;
  
  /**
    If true, it will automatically wrap this text widget with an invalidation panel
  **/
  @:uproperty public var bWrapWithInvalidationPanel : Bool;
  
  /**
    The minimum desired size for the text
  **/
  @:uproperty public var MinDesiredWidth : unreal.Float32;
  
  /**
    A bindable delegate for the ShadowColorAndOpacity.
  **/
  @:uproperty public var ShadowColorAndOpacityDelegate : unreal.umg.FGetLinearColor;
  
  /**
    The color of the shadow
  **/
  @:uproperty public var ShadowColorAndOpacity : unreal.FLinearColor;
  
  /**
    The direction the shadow is cast
  **/
  @:uproperty public var ShadowOffset : unreal.FVector2D;
  
  /**
    The font to render the text with
  **/
  @:uproperty public var Font : unreal.slatecore.FSlateFontInfo;
  
  /**
    A bindable delegate for the ColorAndOpacity.
  **/
  @:uproperty public var ColorAndOpacityDelegate : unreal.umg.FGetSlateColor;
  
  /**
    The color of the text
  **/
  @:uproperty public var ColorAndOpacity : unreal.slatecore.FSlateColor;
  
  /**
    A bindable delegate to allow logic to drive the text of the widget
  **/
  @:uproperty public var TextDelegate : unreal.umg.FGetText;
  
  /**
    The text to display
  **/
  @:uproperty public var Text : unreal.FText;
  
  /**
    Gets the widget text
    @return The widget text
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetText() : unreal.FText;
  
  /**
    Directly sets the widget text.
    Warning: This will wipe any binding created for the Text property!
    @param InText The text to assign to the widget
  **/
  @:ufunction(BlueprintCallable) public function SetText(InText : unreal.FText) : Void;
  
}
