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
package unreal.moviescenetracks;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  A single floating point section
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Sections/MovieSceneFadeSection.h")
@:uextern extern class UMovieSceneFadeSection extends unreal.moviescenetracks.UMovieSceneFloatSection {
  
  /**
    Fade audio
  **/
  public var bFadeAudio : Bool;
  
  /**
    Fade color
  **/
  public var FadeColor : unreal.FLinearColor;
  
}