package ;

import flixel.FlxObject;

/**
 * ...
 * @author Jimmy Comack
 */
class Fireball extends GameObject
{

	private var _direction:Int;
	
	
	public function new(assetFile:String, width:Int, height:Int, x:Int = 0, y:Int = 0, dir = 1) 
	{
		super(assetFile, width, height, x, y, true, true, true);

	
		var runSpeed:Int = 150;
		
		drag.x = runSpeed * 8;
			
		maxVelocity.x = runSpeed;
		
		
		_direction = dir;
		animation.add("fire", [6, 7, 8]);
		
		exec();
	}
	
	public function exec():Void
	{
		animation.play("fire");
		
		if (_direction == -1)
		{
			facing = FlxObject.LEFT;
		}
		else 
		{
			facing = FlxObject.RIGHT;
		}
		acceleration.x = 100 * _direction;
	}
	
	override public function update():Void
	{
		super.update();
		
	}
	
}