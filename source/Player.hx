package ;

import flixel.FlxSprite;
import GameObject;
import flixel.FlxObject;
import flixel.util.FlxPoint;
import flixel.util.FlxRect;
import flixel.FlxG;


/**
 * ...
 * @author Jimmy Comack
 */
class Player extends GameObject
{
	private var _canJump:Bool = true;
	private var _jumpPower:Int = 400;
	private var _fireBall:Fireball;
	private var _direction:Int;
	private var _fireDelay:Int = 75;
	private var _lastFired:Int;
	
	public var currentWeapon:Int = 0;
	
	public function new(assetFile:String, width:Int, height:Int, x:Int = 0, y:Int = 0) 
	{
		super(assetFile, width, height, x, y, true, true, true);
		
		//Bounding box fixes
		this.width = 28;
		this.height = 34;
		this.offset.set(6, 6);
		
		var runSpeed:Int = 150;
		
		drag.x = runSpeed * 8;
		acceleration.y = 420;
		
		maxVelocity.x = runSpeed;
		maxVelocity.y = _jumpPower;
		
		// Add animations
		animation.add("idle", [0]);
		animation.add("walk", [1,2,3]);
		animation.add("jump", [3]);
		
	}
	
	override public function update():Void 
	{
		acceleration.x = 0;
		
		if (FlxG.keyboard.pressed("LEFT"))
		{
			facing = FlxObject.LEFT;
			acceleration.x -= drag.x;
			_direction = -1;
		}
		else if (FlxG.keyboard.pressed("RIGHT"))
		{
			facing = FlxObject.RIGHT;
			acceleration.x += drag.x;
			_direction = 1;
		}
		
		if ((FlxG.keyboard.pressed("UP") && _canJump) && isTouching(FlxObject.FLOOR))
		{
			velocity.y -= _jumpPower;
		}
		
		if (FlxG.keyboard.pressed("SPACE") && )
		{
			
			//createFireball();
			//FlxG.camera.shake(0.005);
			//FlxG.camera.flash(0xffd8eba2,0.35);
			
		}
		
		if (velocity.y != 0)
		{
			animation.play("jump");
		}
		else if (velocity.x == 0)
		{
			animation.play("idle");
		}
		else {
			animation.play("walk");
		}
		
		super.update();
	}
	
}