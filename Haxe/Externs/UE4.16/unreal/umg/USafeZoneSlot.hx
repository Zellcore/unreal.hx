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
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.umg;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:noClass @:uextern @:uclass extern class USafeZoneSlot extends unreal.umg.UPanelSlot {
  @:uproperty public var Padding : unreal.slatecore.FMargin;
  @:uproperty public var VAlign : unreal.slatecore.EVerticalAlignment;
  @:uproperty public var HAlign : unreal.slatecore.EHorizontalAlignment;
  @:uproperty public var SafeAreaScale : unreal.slatecore.FMargin;
  @:uproperty public var bIsTitleSafe : Bool;
  
}