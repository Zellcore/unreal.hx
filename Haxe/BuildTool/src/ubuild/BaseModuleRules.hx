package ubuild;
import unrealbuildtool.*;
import cs.system.io.Path;
import cs.system.collections.generic.List_1 as Lst;
import sys.FileSystem.*;

using ubuild.Helpers;
using StringTools;

/**
  Adds some helper functions to ModuleRules - like getting the game directory and making sure the code only runs once
 **/
@:nativeGen
class BaseModuleRules extends ModuleRules
{
  // we need this here since the constructor is called more
  // than once per compilation - but we want to compile
  // the Haxe code exactly once
  static var firstRun = true;

  var modulePath:String;
  var pluginPath:String;
  var thirdPartyPath:String;
  var gameDir:String;
  var haxeSourcesPath:String;
  var internalHaxeSourcesPath:String;

  public function new(target:TargetInfo)
  {
    super();

    trace('starting - ', std.Type.getClass(this));
    // RulesCompiler.
    //TODO: see in which occasion we might have more than one game folder
    var allGames = cs.Lib.array(RulesCompiler.AllGameFolders.ToArray());
    if (allGames.length > 1)
      trace("AllGameFolders is returning more than one: ",allGames);
    modulePath = RulesCompiler.GetModuleFilename( cs.Lib.toNativeType(std.Type.getClass(this)).Name );
    var haxeInitPath = RulesCompiler.GetModuleFilename("HaxeInit");
    trace(haxeInitPath);
    pluginPath = Path.GetFullPath('$haxeInitPath/../../..');
    thirdPartyPath = Path.GetFullPath(haxeInitPath + "/../../ThirdParty");
    gameDir = allGames[0];
    if (gameDir == null)
      gameDir = Path.GetFullPath(haxeInitPath + "/../../../..");
    haxeSourcesPath = Path.GetFullPath(gameDir + "/Haxe");
    internalHaxeSourcesPath = Path.GetFullPath(haxeInitPath + "/../../Haxe");

    config(target, firstRun);
    firstRun = false;
  }

  private function config(target:TargetInfo, firstRun:Bool)
  {
    throw 'Override me';
  }

  private function getProjectName()
  {
    for (file in readDirectory(gameDir))
    {
      if (file.endsWith('.uproject'))
      {
        return file.substr(0, file.length - '.uproject'.length);
      }
    }

    trace('ERROR: no uproject was found on $gameDir');
    return null;
  }
}
