package ;
import bullets.*;
import flixel.FlxSprite;


/**
 * ...
 * @author Jimmeehhh
 */
class Weapon extends FlxSprite
{
		
	private var _name:String;
	private var _bulletType:BulletTypes;

	public function new(name:String, sprite:String, bulletType:BulletTypes) 
	{
		super(0, 0, sprite);
		
		if (bulletType == null) bulletType = BulletTypes.Basic;
			
		_name = name;
		_bulletType = bulletType;
		
		
		
	}
	
	override public function update():Void
	{
		super.update();
		
		x = Registry.player.x;
		y = Registry.player.y;
	}
	
	private function getBulletType():Bullet
	{
		var curBullet:Bullet;
		
		switch (_bulletType) 
		{
			case eBasic: 
				curBullet = new Basic();
			case eExplosive:
				curBullet = new Explosive();
			case eHail:
				curBullet = new Hail();
			case eFire:
				curBullet = new Fire();
			case eFreeze:
				curBullet = new Freeze();
			case eVoodoo:
				curBullet = new Voodoo();
				
				
		}
		
		return curBullet;
	}
	
	/**
	 * Fire zhe missles
	 */
	public function fire(bx:Int, by:Int):Void
	{
		getBulletType.fire(bx, by);
	}
		
}