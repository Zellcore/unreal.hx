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
  The rich text block
  
  * Fancy Text
  * No Children
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class URichTextBlock extends unreal.umg.UTextLayoutWidget {
  @:ufunction(BlueprintCallable) @:final public function SetText(InText : unreal.Const<unreal.PRef<unreal.FText>>) : Void;
  @:ufunction(BlueprintCallable) @:final public function GetDecoratorByClass(DecoratorClass : unreal.TSubclassOf<unreal.umg.URichTextBlockDecorator>) : unreal.umg.URichTextBlockDecorator;
  @:uproperty private var InstanceDecorators : unreal.TArray<unreal.umg.URichTextBlockDecorator>;
  @:uproperty private var DecoratorClasses : unreal.TArray<unreal.TSubclassOf<unreal.umg.URichTextBlockDecorator>>;
  @:uproperty private var TextStyleSet : unreal.UDataTable;
  
  /**
    The text to display
  **/
  @:uproperty private var Text : unreal.FText;
  
}