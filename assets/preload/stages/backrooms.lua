function onCreate()
	-- background shit
	makeLuaSprite('backroomsbgback', 'backroomsbgback', -600, -150);
	setScrollFactor('backroomsbgback', 0.9, 0.9);
	
	makeLuaSprite('bacrombgfront', 'bacrombgfront', -600, -150);
	setScrollFactor('bacrombgfront', 0.9, 0.9);
	
	addLuaSprite('backroomsbgback', false);
	addLuaSprite('bacrombgfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end