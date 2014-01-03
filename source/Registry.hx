package ;

import flash.display.Stage;
import flixel.*;

/**
 * ...
 * @author Jimmeehhh
 */
class Registry
{
	
	public static var stage:Stage;
	
	public static var player:Player;
	public static var map:Map;
	public static var bullets:BulletManager;
	public static var currentWeapon:Weapon;

	public static var bulletsFired:Int;
		
	public function new() 
	{
		
	}
	
}