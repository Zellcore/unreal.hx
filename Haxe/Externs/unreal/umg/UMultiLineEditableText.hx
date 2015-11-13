/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.umg;


/**
  Editable text box widget
**/
@:umodule("UMG")
@:glueCppIncludes("Components/MultiLineEditableText.h")
@:uextern extern class UMultiLineEditableText extends unreal.umg.UWidget {
  
  /**
    Font color and opacity (overrides Style)
  **/
  public var Font_DEPRECATED : unreal.slatecore.FSlateFontInfo;
  
  /**
    Whether text wraps onto a new line when it's length exceeds this width; if this value is zero or negative, no wrapping occurs.
  **/
  public var WrapTextAt : unreal.Float32;
  
  /**
    Whether to wrap text automatically based on the widget's computed horizontal space.
  **/
  public var bAutoWrapText : Bool;
  
  /**
    The justification of the text in the multilinebox
  **/
  public var Justification : unreal.slate.ETextJustify;
  
  /**
    The style
  **/
  public var WidgetStyle : unreal.slatecore.FTextBlockStyle;
  
}