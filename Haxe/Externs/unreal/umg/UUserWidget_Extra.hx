package unreal.umg;

extern class UUserWidget_Extra {
  @:global
  public static function CreateWidget<T> (OwningPlayer:APlayerController, UserWidgetClass:UClass) : PExternal<T>;
  private function NativeTick(MyGeometry:Const<PRef<FGeometry>>, InDeltaTime:Float32):Void;
}