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
package unreal.localization;

@:umodule("Localization")
@:glueCppIncludes("PortableObjectPipeline.h")
@:uname("ELocalizedTextCollapseMode")
@:class @:uextern @:uenum extern enum ELocalizedTextCollapseMode {
  
  /**
    Collapse texts with the same text identity (namespace + key) and source text (default 4.15+ behavior).
    @DisplayName Identical Text Identity (Namespace + Key) and Source Text
  **/
  @DisplayName("Identical Text Identity (Namespace + Key) and Source Text")
  IdenticalTextIdAndSource;
  
  /**
    Collapse texts with the same package ID, text identity (namespace + key), and source text (deprecated 4.14 behavior, removed in 4.17).
    @DisplayName Identical Package ID, Text Identity (Namespace + Key) and Source Text
  **/
  @DisplayName("Identical Package ID, Text Identity (Namespace + Key) and Source Text")
  IdenticalPackageIdTextIdAndSource;
  
  /**
    Collapse texts with the same namespace and source text (legacy pre-4.14 behavior).
    @DisplayName Identical Namespace and Source Text
  **/
  @DisplayName("Identical Namespace and Source Text")
  IdenticalNamespaceAndSource;
  
}