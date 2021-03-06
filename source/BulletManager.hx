package ;
import flixel.group.FlxGroup;

/**
 * ...
 * @author Jimmeehhh
 */
class BulletManager extends FlxGroup
{
		
	
	public function new(bullet:Bullet)
	{
		super();
		
		// 40 bullets for now
		for (i in 0...40)
		{
			add(new Bullet);
		}
	}
	
	public function fire(bx:Int, by:Int):Void
	{
		if (getFirstAvailable())
		{
			Bullet(getFirstAvailable()).fire(bx, by);
		}
	}
}