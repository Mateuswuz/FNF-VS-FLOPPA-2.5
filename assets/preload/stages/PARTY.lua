function onCreate()
	-- background shit
	makeAnimatedLuaSprite('HousePARTY','HousePARTY',-600, -300)addAnimationByPrefix('HousePARTY','dance','HousePARTY',24,true)
	objectPlayAnimation('HousePARTY','dance',false)
	setScrollFactor('HousePARTY', 0.9, 0.9);
	
	makeAnimatedLuaSprite('HousePARTYFLOOR','HousePARTYFLOOR',-650, 750)addAnimationByPrefix('HousePARTYFLOOR','dance','HousePARTYFLOOR',24,true)
	objectPlayAnimation('HousePARTYFLOOR','dance',false)
	setScrollFactor('HousePARTYFLOOR', 1.1, 1.1);

	addLuaSprite('HousePARTY', false);
	addLuaSprite('HousePARTYFLOOR', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end