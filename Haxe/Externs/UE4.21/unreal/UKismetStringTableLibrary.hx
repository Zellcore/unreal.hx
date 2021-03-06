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

@:glueCppIncludes("Kismet/KismetStringTableLibrary.h")
@:uextern @:uclass extern class UKismetStringTableLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns true if the given table ID corresponds to a registered string table.
  **/
  @:ufunction(BlueprintCallable) static public function IsRegisteredTableId(TableId : unreal.Const<unreal.FName>) : Bool;
  
  /**
    Returns true if the given table ID corresponds to a registered string table, and that table has.
  **/
  @:ufunction(BlueprintCallable) static public function IsRegisteredTableEntry(TableId : unreal.Const<unreal.FName>, Key : unreal.FString) : Bool;
  
  /**
    Returns the namespace of the given string table.
  **/
  @:ufunction(BlueprintCallable) static public function GetTableNamespace(TableId : unreal.Const<unreal.FName>) : unreal.FString;
  
  /**
    Returns the source string of the given string table entry (or an empty string).
  **/
  @:ufunction(BlueprintCallable) static public function GetTableEntrySourceString(TableId : unreal.Const<unreal.FName>, Key : unreal.FString) : unreal.FString;
  
  /**
    Returns the specified meta-data of the given string table entry (or an empty string).
  **/
  @:ufunction(BlueprintCallable) static public function GetTableEntryMetaData(TableId : unreal.Const<unreal.FName>, Key : unreal.FString, MetaDataId : unreal.Const<unreal.FName>) : unreal.FString;
  
  /**
    Returns an array of all registered string table IDs
  **/
  @:ufunction(BlueprintCallable) static public function GetRegisteredStringTables() : unreal.TArray<unreal.FName>;
  
  /**
    Returns an array of all keys within the given string table
  **/
  @:ufunction(BlueprintCallable) static public function GetKeysFromStringTable(TableId : unreal.Const<unreal.FName>) : unreal.TArray<unreal.FString>;
  
  /**
    Returns an array of all meta-data IDs within the given string table entry
  **/
  @:ufunction(BlueprintCallable) static public function GetMetaDataIdsFromStringTableEntry(TableId : unreal.Const<unreal.FName>, Key : unreal.FString) : unreal.TArray<unreal.FName>;
  
}
