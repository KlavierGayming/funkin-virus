import flixel.input.gamepad.FlxGamepad;
import openfl.Lib;
import flixel.FlxG;

class KadeEngineData
{
    public static function initSave()
    {
    	if (FlxG.save.data.totalSongScores == null)
    		FlxG.save.data.totalSongScores = 0;
    	if (FlxG.save.data.discoScore == null)
    		FlxG.save.data.discoScore = 0;
    	if (FlxG.save.data.intoxicateScore == null)
    		FlxG.save.data.intoxicateScore = 0;
    	if (FlxG.save.data.discoDone == null)
    		FlxG.save.data.discoDone = false;
    	if (FlxG.save.data.intoxicateDone == null)
    		FlxG.save.data.intoxicateDone = false;
    	if (FlxG.save.data.storyBeated == null)
    		FlxG.save.data.storyBeated = false;
    	if (FlxG.save.data.storyBeatedNom == null)
    		FlxG.save.data.storyBeatedNom = false;

    	if (FlxG.save.data.discordPresence == null)
    		FlxG.save.data.discordPresence = true;

        if (FlxG.save.data.weekUnlocked == null)
			FlxG.save.data.weekUnlocked = 7;

		if (FlxG.save.data.newInput == null)
			FlxG.save.data.newInput = true;

		if (FlxG.save.data.downscroll == null)
			FlxG.save.data.downscroll = false;

		if (FlxG.save.data.antialiasing == null)
			FlxG.save.data.antialiasing = true;

		if (FlxG.save.data.missSounds == null)
			FlxG.save.data.missSounds = true;

		if (FlxG.save.data.dfjk == null)
			FlxG.save.data.dfjk = false;

		if (FlxG.save.data.accuracyDisplay == null)
			FlxG.save.data.accuracyDisplay = true;

		if (FlxG.save.data.offset == null)
			FlxG.save.data.offset = 0;

		if (FlxG.save.data.songPosition == null)
			FlxG.save.data.songPosition = false;

		if (FlxG.save.data.fps == null)
			FlxG.save.data.fps = false;

		if (FlxG.save.data.changedHit == null)
		{
			FlxG.save.data.changedHitX = -1;
			FlxG.save.data.changedHitY = -1;
			FlxG.save.data.changedHit = false;
		}

		if (FlxG.save.data.fpsRain == null)
			FlxG.save.data.fpsRain = false;

		if (FlxG.save.data.fpsCap == null){
			#if desktop
			FlxG.save.data.fpsCap = 120;
			#else
			FlxG.save.data.fpsCap = 60;
			#end
		}

		#if desktop
		if (FlxG.save.data.fpsCap > 285 || FlxG.save.data.fpsCap < 60)
			FlxG.save.data.fpsCap = 120; // baby proof so you can't hard lock ur copy of kade engine
		#else
		if (FlxG.save.data.fpsCap > 90 || FlxG.save.data.fpsCap < 60)
			FlxG.save.data.fpsCap = 60; // baby proof so you can't hard lock ur copy of kade engine
		#end
		
		if (FlxG.save.data.scrollSpeed == null)
			FlxG.save.data.scrollSpeed = 1;

		if (FlxG.save.data.npsDisplay == null)
			FlxG.save.data.npsDisplay = false;

		if (FlxG.save.data.frames == null)
			FlxG.save.data.frames = 10;

		if (FlxG.save.data.accuracyMod == null)
			FlxG.save.data.accuracyMod = 1;

		if (FlxG.save.data.watermark == null)
			FlxG.save.data.watermark = false;//:smugsumi:

		if (FlxG.save.data.ghost == null)
			FlxG.save.data.ghost = true;

		if (FlxG.save.data.distractions == null)
			FlxG.save.data.distractions = true;
		
		if (FlxG.save.data.stepMania == null)
			FlxG.save.data.stepMania = false;

		if (FlxG.save.data.flashing == null)
			FlxG.save.data.flashing = true;

		if (FlxG.save.data.resetButton == null)
			FlxG.save.data.resetButton = false;
		
		if (FlxG.save.data.botplay == null)
			FlxG.save.data.botplay = false;

		if (FlxG.save.data.cpuStrums == null)
			FlxG.save.data.cpuStrums = false;

		if (FlxG.save.data.strumline == null)
			FlxG.save.data.strumline = false;
		
		if (FlxG.save.data.customStrumLine == null)
			FlxG.save.data.customStrumLine = 0;

		if (FlxG.save.data.camzoom == null)
			FlxG.save.data.camzoom = true;

		if (FlxG.save.data.scoreScreen == null)
			FlxG.save.data.scoreScreen = true;

		if (FlxG.save.data.inputShow == null)
			FlxG.save.data.inputShow = false;

		if (FlxG.save.data.optimize == null)
			FlxG.save.data.optimize = false;
		
		if (FlxG.save.data.cacheImages == null)
			FlxG.save.data.cacheImages = false;

		if (FlxG.save.data.vineboom == null)
			FlxG.save.data.vineboom = false;

		if (FlxG.save.data.bruh == null)
			FlxG.save.data.bruh = false;

		if (FlxG.save.data.storyBeated == null)
			FlxG.save.data.storyBeated = false;

		if (FlxG.save.data.noteSkin == null)
			FlxG.save.data.noteSkin = true;

		if (FlxG.save.data.lessUpdate == null)
			FlxG.save.data.lessUpdate = false;

		if (FlxG.save.data.noteSplash == null)
			FlxG.save.data.noteSplash = true;

		if (FlxG.save.data.smoothIcon == null)
			FlxG.save.data.smoothIcon = true;

		if (FlxG.save.data.BestTrophy == null)
			FlxG.save.data.BestTrophy = false;
		if (FlxG.save.data.IronTrophy == null)
			FlxG.save.data.IronTrophy = false;
		if (FlxG.save.data.GoldTrophy == null)
			FlxG.save.data.GoldTrophy = false;
		if (FlxG.save.data.RainbowTrophy == null)
			FlxG.save.data.RainbowTrophy = false;

		var gamepad:FlxGamepad = FlxG.gamepads.lastActive;
		
		KeyBinds.gamepad = gamepad != null;

		Conductor.recalculateTimings();
		PlayerSettings.player1.controls.loadKeyBinds();
		KeyBinds.keyCheck();

		Main.watermarks = FlxG.save.data.watermark;

		(cast (Lib.current.getChildAt(0), Main)).setFPSCap(FlxG.save.data.fpsCap);
	}
}