package ;

import flixel.FlxSprite;
import flixel.FlxObject;

/**
 * ...
 * @author Jimmy Comack
 */
class GameObject extends FlxSprite
{
	
	public function new(assetFile:String, width:Int, height:Int, x:Int = 0, y:Int = 0, animated:Bool = false, flip:Bool = false, complexRender:Bool = false):Void
	{
		
		super(x, y);
			
		loadGraphic(assetFile, animated, flip, width, height);
		forceComplexRender = complexRender;
		
	}
	
	override public function update():Void 
	{
		super.update();
	}
	
}