package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxMath;
import flixel.tile.FlxTilemap;
import flixel.util.FlxColor;
import flixel.util.FlxPoint;
import flixel.util.FlxRect;
import openfl.Assets;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	
	private var _player1:Player;
	
	private var _player:FlxSprite;
	private var _enemy:FlxSprite;
	private var _tile:FlxSprite;
	
	private var _map:FlxTilemap;
	
	private var _playerSpeed:Float = 120;
	private var _playerJump:Float = 400;
	private var _stateWalking:Bool = false;
	
	inline static private var TILE_WIDTH:Int = 20;
    inline static private var TILE_HEIGHT:Int = 20;
		
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
	
		FlxG.debugger.visible = true;
		FlxG.cameras.bgColor = 0xff000000;
		FlxG.mouse.hide();
		
		_map = new FlxTilemap();		
		_map.loadMap(FlxTilemap.imageToCSV("images/map2.png"), "images/tiles.png", TILE_WIDTH, TILE_HEIGHT, FlxTilemap.AUTO);
		_player1 = new Player("images/player-l.png", 0, 0, TILE_WIDTH * 25, TILE_HEIGHT * 15);
		
		add(_map);
		add(_player1);
		
		var ext = 50;
		
		FlxG.worldBounds.set(0, 0, FlxG.width * TILE_WIDTH, FlxG.height * TILE_HEIGHT);
		FlxG.worldDivisions = 8;
		FlxG.camera.follow(_player1, FlxCamera.STYLE_PLATFORMER);
		FlxG.camera.setSize(FlxG.width + ext, FlxG.height + ext);
		FlxG.camera.setPosition( - ext / 2, - ext / 2);
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		
		super.update();
		
		FlxG.collide(_map, _player1);
		
		
	}
	
	private function onOverlap(Obj1:FlxObject, Obj2:FlxObject):Void 
	{
		
	}
	
}