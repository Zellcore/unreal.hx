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
package unreal.niagara;

@:umodule("Niagara")
@:glueCppIncludes("Classes/NiagaraScript.h")
@:uname("ENiagaraModuleDependencyScriptConstraint")
@:class @:uextern @:uenum extern enum ENiagaraModuleDependencyScriptConstraint {
  
  /**
    The module providing the dependency must be in the same script e.g. if the module requiring the dependency is in "Particle Spawn" the module providing the dependency must also be in "Particle Spawn".
  **/
  SameScript;
  
  /**
    The module providing the dependency can be in any script as long as it satisfies the dependency type, e.g. if the module requiring the dependency is in "Particle Spawn" the module providing the dependency could be in "Emitter Spawn".
  **/
  AllScripts;
  
}
