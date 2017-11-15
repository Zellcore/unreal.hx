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

@:glueCppIncludes("Kismet/KismetTextLibrary.h")
@:uextern @:uclass extern class UKismetTextLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Converts a vector value to localized formatted text, in the form 'X= Y= Z='
  **/
  @:ufunction(BlueprintCallable) static public function Conv_VectorToText(InVec : unreal.FVector) : unreal.FText;
  
  /**
    Converts a vector2d value to localized formatted text, in the form 'X= Y='
  **/
  @:ufunction(BlueprintCallable) static public function Conv_Vector2dToText(InVec : unreal.FVector2D) : unreal.FText;
  
  /**
    Converts a rotator value to localized formatted text, in the form 'P= Y= R='
  **/
  @:ufunction(BlueprintCallable) static public function Conv_RotatorToText(InRot : unreal.FRotator) : unreal.FText;
  
  /**
    Converts a transform value to localized formatted text, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='
  **/
  @:ufunction(BlueprintCallable) static public function Conv_TransformToText(InTrans : unreal.Const<unreal.PRef<unreal.FTransform>>) : unreal.FText;
  
  /**
    Converts a UObject value to culture invariant text by calling the object's GetName method
  **/
  @:ufunction(BlueprintCallable) static public function Conv_ObjectToText(InObj : unreal.UObject) : unreal.FText;
  
  /**
    Converts a linear color value to localized formatted text, in the form '(R=,G=,B=,A=)'
  **/
  @:ufunction(BlueprintCallable) static public function Conv_ColorToText(InColor : unreal.FLinearColor) : unreal.FText;
  
  /**
    Converts localizable text to the string
  **/
  @:ufunction(BlueprintCallable) static public function Conv_TextToString(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FString;
  
  /**
    Converts string to culture invariant text. Use Format or Make Literal Text to create localizable text
  **/
  @:ufunction(BlueprintCallable) static public function Conv_StringToText(InString : unreal.FString) : unreal.FText;
  
  /**
    Converts Name to culture invariant text
  **/
  @:ufunction(BlueprintCallable) static public function Conv_NameToText(InName : unreal.FName) : unreal.FText;
  
  /**
    Returns true if text is empty.
  **/
  @:ufunction(BlueprintCallable) static public function TextIsEmpty(InText : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Returns true if text is transient.
  **/
  @:ufunction(BlueprintCallable) static public function TextIsTransient(InText : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Returns true if text is culture invariant.
  **/
  @:ufunction(BlueprintCallable) static public function TextIsCultureInvariant(InText : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Transforms the text to lowercase in a culture correct way.
    @note The returned instance is linked to the original and will be rebuilt if the active culture is changed.
  **/
  @:ufunction(BlueprintCallable) static public function TextToLower(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FText;
  
  /**
    Transforms the text to uppercase in a culture correct way.
    @note The returned instance is linked to the original and will be rebuilt if the active culture is changed.
  **/
  @:ufunction(BlueprintCallable) static public function TextToUpper(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FText;
  
  /**
    Removes whitespace characters from the front of the text.
  **/
  @:ufunction(BlueprintCallable) static public function TextTrimPreceding(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FText;
  
  /**
    Removes trailing whitespace characters.
  **/
  @:ufunction(BlueprintCallable) static public function TextTrimTrailing(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FText;
  
  /**
    Removes whitespace characters from the front and end of the text.
  **/
  @:ufunction(BlueprintCallable) static public function TextTrimPrecedingAndTrailing(InText : unreal.Const<unreal.PRef<unreal.FText>>) : unreal.FText;
  
  /**
    Returns an empty piece of text.
  **/
  @:ufunction(BlueprintCallable) static public function GetEmptyText() : unreal.FText;
  
  /**
    Attempts to find existing Text using the representation found in the loc tables for the specified namespace and key.
  **/
  @:ufunction(BlueprintCallable) static public function FindTextInLocalizationTable(Namespace : unreal.FString, Key : unreal.FString, OutText : unreal.PRef<unreal.FText>) : Bool;
  
  /**
    Returns true if A and B are linguistically equal (A == B).
  **/
  @:ufunction(BlueprintCallable) static public function EqualEqual_TextText(A : unreal.Const<unreal.PRef<unreal.FText>>, B : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Returns true if A and B are linguistically equal (A == B), ignoring case.
  **/
  @:ufunction(BlueprintCallable) static public function EqualEqual_IgnoreCase_TextText(A : unreal.Const<unreal.PRef<unreal.FText>>, B : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Returns true if A and B are linguistically not equal (A != B).
  **/
  @:ufunction(BlueprintCallable) static public function NotEqual_TextText(A : unreal.Const<unreal.PRef<unreal.FText>>, B : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Returns true if A and B are linguistically not equal (A != B), ignoring case.
  **/
  @:ufunction(BlueprintCallable) static public function NotEqual_IgnoreCase_TextText(A : unreal.Const<unreal.PRef<unreal.FText>>, B : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Converts a boolean value to formatted text, either 'true' or 'false'
  **/
  @:ufunction(BlueprintCallable) static public function Conv_BoolToText(InBool : Bool) : unreal.FText;
  
  /**
    Converts a byte value to formatted text
  **/
  @:ufunction(BlueprintCallable) static public function Conv_ByteToText(Value : unreal.UInt8) : unreal.FText;
  
  /**
    Converts a passed in integer to text based on formatting options
  **/
  @:ufunction(BlueprintCallable) static public function Conv_IntToText(Value : unreal.Int32, bUseGrouping : Bool = true, MinimumIntegralDigits : unreal.Int32 = 1, MaximumIntegralDigits : unreal.Int32 = 324) : unreal.FText;
  
  /**
    Converts a passed in float to text based on formatting options
  **/
  @:ufunction(BlueprintCallable) static public function Conv_FloatToText(Value : unreal.Float32, RoundingMode : unreal.ERoundingMode, bUseGrouping : Bool = true, MinimumIntegralDigits : unreal.Int32 = 1, MaximumIntegralDigits : unreal.Int32 = 324, MinimumFractionalDigits : unreal.Int32 = 0, MaximumFractionalDigits : unreal.Int32 = 3) : unreal.FText;
  
  /**
    Generate an FText that represents the passed number as currency in the current culture.
    BaseVal is specified in the smallest fractional value of the currency and will be converted for formatting according to the selected culture.
    Keep in mind the CurrencyCode is completely independent of the culture it's displayed in (and they do not imply one another).
    For example: FText::AsCurrencyBase(650, TEXT("EUR")); would return an FText of "<EUR>6.50" in most English cultures (en_US/en_UK) and "6,50<EUR>" in Spanish (es_ES) (where <EUR> is U+20AC)
  **/
  @:ufunction(BlueprintCallable) static public function AsCurrencyBase(BaseValue : unreal.Int32, CurrencyCode : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in integer to a text formatted as a currency
  **/
  @:ufunction(BlueprintCallable) static public function AsCurrency_Integer(Value : unreal.Int32, RoundingMode : unreal.ERoundingMode, bUseGrouping : Bool = true, MinimumIntegralDigits : unreal.Int32 = 1, MaximumIntegralDigits : unreal.Int32 = 324, MinimumFractionalDigits : unreal.Int32 = 0, MaximumFractionalDigits : unreal.Int32 = 3, CurrencyCode : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in float to a text formatted as a currency
  **/
  @:ufunction(BlueprintCallable) static public function AsCurrency_Float(Value : unreal.Float32, RoundingMode : unreal.ERoundingMode, bUseGrouping : Bool = true, MinimumIntegralDigits : unreal.Int32 = 1, MaximumIntegralDigits : unreal.Int32 = 324, MinimumFractionalDigits : unreal.Int32 = 0, MaximumFractionalDigits : unreal.Int32 = 3, CurrencyCode : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in float to a text, formatted as a percent
  **/
  @:ufunction(BlueprintCallable) static public function AsPercent_Float(Value : unreal.Float32, RoundingMode : unreal.ERoundingMode, bUseGrouping : Bool = true, MinimumIntegralDigits : unreal.Int32 = 1, MaximumIntegralDigits : unreal.Int32 = 324, MinimumFractionalDigits : unreal.Int32 = 0, MaximumFractionalDigits : unreal.Int32 = 3) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a date using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
  **/
  @:ufunction(BlueprintCallable) static public function AsDate_DateTime(InDateTime : unreal.Const<unreal.PRef<unreal.FDateTime>>) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a date using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
  **/
  @:ufunction(BlueprintCallable) static public function AsTimeZoneDate_DateTime(InDateTime : unreal.Const<unreal.PRef<unreal.FDateTime>>, InTimeZone : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a date & time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
  **/
  @:ufunction(BlueprintCallable) static public function AsDateTime_DateTime(In : unreal.Const<unreal.PRef<unreal.FDateTime>>) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a date & time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
  **/
  @:ufunction(BlueprintCallable) static public function AsTimeZoneDateTime_DateTime(InDateTime : unreal.Const<unreal.PRef<unreal.FDateTime>>, InTimeZone : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
  **/
  @:ufunction(BlueprintCallable) static public function AsTime_DateTime(In : unreal.Const<unreal.PRef<unreal.FDateTime>>) : unreal.FText;
  
  /**
    Converts a passed in date & time to a text, formatted as a time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
  **/
  @:ufunction(BlueprintCallable) static public function AsTimeZoneTime_DateTime(InDateTime : unreal.Const<unreal.PRef<unreal.FDateTime>>, InTimeZone : unreal.FString) : unreal.FText;
  
  /**
    Converts a passed in time span to a text, formatted as a time span
  **/
  @:ufunction(BlueprintCallable) static public function AsTimespan_Timespan(InTimespan : unreal.Const<unreal.PRef<unreal.FTimespan>>) : unreal.FText;
  
  /**
    Used for formatting text using the FText::Format function and utilized by the UK2Node_FormatText
  **/
  @:ufunction(BlueprintCallable) static public function Format(InPattern : unreal.FText, InArgs : unreal.TArray<unreal.FFormatArgumentData>) : unreal.FText;
  
  /**
    Returns true if the given text is referencing a string table.
  **/
  @:ufunction(BlueprintCallable) static public function TextIsFromStringTable(Text : unreal.Const<unreal.PRef<unreal.FText>>) : Bool;
  
  /**
    Attempts to create a text instance from a string table ID and key.
    @note This exists to allow programmatic ‎look-up of a string table entry from dynamic content - you should favor setting your string table reference on a text property or pin wherever possible as it is significantly more robust (see "Make Literal Text").
    @return The found text, or a dummy text if the entry could not be found.
  **/
  @:ufunction(BlueprintCallable) static public function TextFromStringTable(TableId : unreal.Const<unreal.FName>, Key : unreal.FString) : unreal.FText;
  
  /**
    Attempts to find the String Table ID and key used by the given text.
    @return True if the String Table ID and key were found, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function StringTableIdAndKeyFromText(Text : unreal.FText, OutTableId : unreal.PRef<unreal.FName>, OutKey : unreal.PRef<unreal.FString>) : Bool;
  
}
