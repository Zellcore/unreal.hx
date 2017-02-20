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
package unreal;


/**
  GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase.
  It exists on both the client and the server and is fully replicated.
**/
@:glueCppIncludes("GameFramework/GameStateBase.h")
@:uextern extern class AGameStateBase extends unreal.AInfo {
  
  /**
    Frequency that the server updates the replicated TimeSeconds from the world. Set to zero to disable periodic updates.
  **/
  private var ServerWorldTimeSecondsUpdateFrequency : unreal.Float32;
  
  /**
    The difference from the local world's TimeSeconds and the server world's TimeSeconds.
  **/
  private var ServerWorldTimeSecondsDelta : unreal.Float32;
  
  /**
    Server TimeSeconds. Useful for syncing up animation and gameplay.
  **/
  private var ReplicatedWorldTimeSeconds : unreal.Float32;
  
  /**
    Array of all PlayerStates, maintained on both server and clients (PlayerStates are always relevant)
  **/
  public var PlayerArray : unreal.TArray<unreal.APlayerState>;
  
  /**
    Class used by spectators, assigned by GameModeBase.
  **/
  public var SpectatorClass : unreal.TSubclassOf<unreal.ASpectatorPawn>;
  
  /**
    Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL.
  **/
  public var AuthorityGameMode : unreal.AGameModeBase;
  
  /**
    Class of the server's game mode, assigned by GameModeBase.
  **/
  public var GameModeClass : unreal.TSubclassOf<unreal.AGameModeBase>;
  
  /**
    Returns the simulated TimeSeconds on the server, will be synchronized on client and server
  **/
  @:thisConst public function GetServerWorldTimeSeconds() : unreal.Float32;
  
  /**
    Returns true if the world has started play (called BeginPlay on actors)
  **/
  @:thisConst public function HasBegunPlay() : Bool;
  
  /**
    Returns true if the world has started match (called MatchStarted callbacks)
  **/
  @:thisConst public function HasMatchStarted() : Bool;
  
  /**
    Returns the time that should be used as when a player started
  **/
  @:thisConst public function GetPlayerStartTime(Controller : unreal.AController) : unreal.Float32;
  
  /**
    Returns how much time needs to be spent before a player can respawn
  **/
  @:thisConst public function GetPlayerRespawnDelay(Controller : unreal.AController) : unreal.Float32;
  
  /**
    GameModeBase class notification callback.
  **/
  private function OnRep_GameModeClass() : Void;
  
  /**
    Callback when we receive the spectator class
  **/
  private function OnRep_SpectatorClass() : Void;
  
  /**
    By default calls BeginPlay and StartMatch
  **/
  private function OnRep_ReplicatedHasBegunPlay() : Void;
  
  /**
    Allows clients to calculate ServerWorldTimeSecondsDelta
  **/
  private function OnRep_ReplicatedWorldTimeSeconds() : Void;
  
}