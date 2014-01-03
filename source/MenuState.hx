package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	
	private var _gameTitle:FlxText;
	private var _startButton:FlxButton;
	private var _dimensions:FlxText;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Set a background color
		FlxG.cameras.bgColor = 0xffff00ff;
		
		_startButton = new FlxButton(0, 0, "Start", start);
		_startButton.x = (FlxG.width / 2) - (_startButton.width / 2);
		_startButton.y = (FlxG.height / 2);
		
		_gameTitle = new FlxText(0, 0, 120, "Redneck Rampage", 16);
		_gameTitle.x = (FlxG.width / 2) - (_gameTitle.width / 2);
		_gameTitle.y = 30;
		_gameTitle.alignment = "center";
		
		add(_startButton);
		add(_gameTitle);
		
		
		
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end
		
		super.create();
	}
	
	public function start():Void
	{
		FlxG.switchState(new PlayState());
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
	}	
}