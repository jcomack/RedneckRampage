package ;
import flixel.FlxSprite;

/**
 * ...
 * @author Jimmy Comack
 */
class Weapon extends FlxSprite
{
		
	private var _name:String;
	private var _type:String;
	
	private var _availableTypes:Array;

	public function new(sprite:String) 
	{
		super(0, 0, sprite);
		
		x = Registry.player.x;
		y = Registry.player.y;
		
	}
	
	override public function update():Void
	{
		super.update();
	}
	
	/**
	 * Fire zhe missles
	 */
	public function fire():Void
	{
		
	}
		
}