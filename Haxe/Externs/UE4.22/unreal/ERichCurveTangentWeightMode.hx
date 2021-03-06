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
  Enumerates tangent weight modes.
**/
@:glueCppIncludes("Classes/Curves/RichCurve.h")
@:uname("ERichCurveTangentWeightMode")
@:uextern @:uenum extern enum ERichCurveTangentWeightMode {
  
  /**
    Don't take tangent weights into account.
    @DisplayName None
  **/
  @DisplayName("None")
  RCTWM_WeightedNone;
  
  /**
    Only take the arrival tangent weight into account for evaluation.
    @DisplayName Arrive
  **/
  @DisplayName("Arrive")
  RCTWM_WeightedArrive;
  
  /**
    Only take the leaving tangent weight into account for evaluation.
    @DisplayName Leave
  **/
  @DisplayName("Leave")
  RCTWM_WeightedLeave;
  
  /**
    Take both the arrival and leaving tangent weights into account for evaluation.
    @DisplayName Both
  **/
  @DisplayName("Both")
  RCTWM_WeightedBoth;
  
}
