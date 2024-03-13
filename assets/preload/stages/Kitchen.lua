function onCreate()
	-- background shit
	makeLuaSprite('eaeaea', 'eaeaea', -600, -300);
	setScrollFactor('eaeaea', 0.9, 0.9);
	
	makeLuaSprite('aeaeae', 'aeaeae', -650, 600);
	setScrollFactor('aeaeae', 0.9, 0.9);
	scaleObject('aeaeae', 1.1, 1.1);


	addLuaSprite('eaeaea', false);
	addLuaSprite('aeaeae', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end