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
  @param Area
  @param bIsExpanded
  
**/
@:glueCppIncludes("UMG.h", "Public/Components/ExpandableArea.h")
@:uParamName("Area")
@:uParamName("bIsExpanded")
@:umodule("UMG")
typedef FOnExpandableAreaExpansionChanged = unreal.DynamicMulticastDelegate<FOnExpandableAreaExpansionChanged, unreal.umg.UExpandableArea->Bool->Void>;