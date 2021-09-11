package;

import FlxGameJolt;
import flixel.input.gamepad.FlxGamepad;
import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.addons.ui.FlxUIInputText;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
#if newgrounds
import io.newgrounds.NG;
#end
import lime.app.Application;
#if cpp
import sys.thread.Thread;
#end
#if windows
import Discord.DiscordClient;
#end

class LogState extends MusicBeatState{

	var chooseName:FlxText;

	var name:FlxUIInputText;

	override public function create(){
		#if sys
		#if desktop
		if (!sys.FileSystem.exists(Sys.getCwd() + "/assets/replays"))
		#else 
		if (!sys.FileSystem.exists(Main.path + Sys.getCwd() + "/assets/replays"))
		#end
			sys.FileSystem.createDirectory(Sys.getCwd() + "/assets/replays");
		#end

		@:privateAccess
		{
			trace("Loaded " + openfl.Assets.getLibrary("default").assetsLoaded + " assets (DEFAULT)");
		}
		
		FlxG.save.bind('funkin', 'virus99');

		PlayerSettings.init();

		KadeEngineData.initSave();
		MedalSaves.initMedal();
		
		Highscore.load();
		
		chooseName = new FlxText(FlxG.width * 0.7, 5, 0, "Type in your BetaTester code.", 32);
		chooseName.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, RIGHT);
		chooseName.alignment = CENTER;
		chooseName.setBorderStyle(OUTLINE, 0xFF000000, 5, 1);
		chooseName.screenCenter(X);
		chooseName.y = 38;
		chooseName.scrollFactor.set();
		add(chooseName);

		name = new FlxUIInputText(10, 10, FlxG.width, '', 8);
		name.setFormat(Paths.font("vcr.ttf"), 50, FlxColor.WHITE, RIGHT);
		name.alignment = CENTER;
		name.setBorderStyle(OUTLINE, 0xFF000000, 5, 1);
		name.screenCenter();
		name.scrollFactor.set();
		add(name);
		name.backgroundColor = 0xFF000000;
		name.maxLength = 31;
		name.lines = 1;
		name.caretColor = 0xFFFFFFFF;

		doTheFlick();

		super.create();
	}
	override public function update(elapsed:Float){
		super.update(elapsed);
		
		name.hasFocus = true;
		
		if (FlxG.keys.justPressed.ENTER){
			switch(name.text.toLowerCase()){
				case "8bitryan" | "8-bitryan":
					chooseName.text = "Welcome, Ryan.";
					moveStates();
				case "aqua":
					chooseName.text = "Welcome, Aqua from the MVA Team.";
					moveStates();
				case "rusron":
					chooseName.text = "Welcome, Director.";
					moveStates();
				case "john":
					chooseName.text = "Welcome, John from the MVA Team.";
					moveStates();
				case "lucky":
					chooseName.text = "Welcome, Luckydog from the MVA Team.";
					moveStates();
				case "zack":
					chooseName.text = "Welcome, Zack from the MVA Team.";
					moveStates();
				case "tqualizer":
					chooseName.text = "Welcome, Tea from the MVA Team.";
					moveStates();
				case "flippy":
					chooseName.text = "Welcome, Flippy.";
					moveStates();
				case "gegcoin":
					chooseName.text = "Welcome, Gegcoin.";
					moveStates();
				case "ginger":
					chooseName.text = "Welcome, Ginger from the MVA Team.";
					moveStates();
				default:
					moveStates(true);
			}
		}
	}
	function moveStates(?lmaoNo:Bool = false){
		if (!lmaoNo){
			new FlxTimer().start(1.5, function(tmr:FlxTimer){
				FlxG.switchState(new MainMenuState());
			});
		}
		else{
			chooseName.text = "Invalid BetaTester pass.";
			new FlxTimer().start(1.5, function(tmr:FlxTimer){
				chooseName.text = "Type in your BetaTester code.";
			});
		}
	}
}