package ;

import flixel.FlxObject;
import flixel.FlxSprite;

/**
 * ...
 * @author Jimmeehhh
 */
class Bullet extends FlxSprite
{

	public var damage:Int = 1;
	public var speed:Int = 300;
	
	public function new(sprite:String) 
	{
		super(0, 0, sprite);		
		exists = false;
	}
	
	public function fire(bx:Int, by:Int):Void
	{
		x = bx;
		y = by;
		velocity.y = -speed;
		exists = true;
	}
		
	override public function update():Void
	{
		super.update();
		
		if (exists && y < -height)
		{
			exists = false;
		}
		
	}
	
	
	
}