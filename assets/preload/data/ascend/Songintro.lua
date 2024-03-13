	--easy script configs
    IntroTextSize = 25	--Size of the text for the Now Playing thing.
    IntroSubTextSize = 35 --size of the text for the Song Name.
    IntroSubText2Size = 20
    IntroSubText3Size = 20
    IntroTagColor = '000000' --Color of the tag at the end of the box.
    IntroTagWidth = 0	--Width of the box's tag thingy.
    --easy script configs
    
    --actual script
    function onCreate()
        --the tag at the end of the box
        makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 0)
        makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
        setObjectCamera('JukeBoxTag', 'other')
        --addLuaSprite('JukeBoxTag', true)
    
        --the box
        makeLuaSprite('JukeBox', 'musicBar', -305-IntroTagWidth, 210)
        setProperty('JukeBox.alpha', 0.7)
        setObjectCamera('JukeBox', 'other')
        addLuaSprite('JukeBox', true)
    
        --text for the song name
        makeLuaText('JukeBoxSubText', 'Ascend', 300, -305-IntroTagWidth, 210)
        setTextAlignment('JukeBoxSubText', 'left')
        setObjectCamera('JukeBoxSubText', 'other')
        setTextSize('JukeBoxSubText', IntroSubTextSize)
        addLuaText('JukeBoxSubText')
    
        --text for the artist name
        makeLuaText('JukeBoxSubText2', 'By Kai_', 200, -305-IntroTagWidth, 250)
        setTextAlignment('JukeBoxSubText2', 'left')
        setObjectCamera('JukeBoxSubText2', 'other')
        setTextSize('JukeBoxSubText2', IntroSubText2Size)
        addLuaText('JukeBoxSubText2')

        makeLuaText('JukeBoxSubText3', '(Charted by Geimingbob)', 400, -305-IntroTagWidth, 275)
        setTextAlignment('JukeBoxSubText3', 'left')
        setObjectCamera('JukeBoxSubText3', 'other')
        setTextSize('JukeBoxSubText3', IntroSubText3Size)
        addLuaText('JukeBoxSubText3')
    end
    
    --motion functions
    function onSongStart()
        -- Inst and Vocals start playing, songPosition = 0
        doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
        doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
        doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
        doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
        doTweenX('MoveInFive', 'JukeBoxSubText2', 0, 1, 'CircInOut')
        doTweenX('MoveInSix', 'JukeBoxSubText3', 0, 1, 'CircInOut')
        
        runTimer('JukeBoxWait', 3, 1)
    end
    
    function onTimerCompleted(tag, loops, loopsLeft)
        -- A loop from a timer you called has been completed, value "tag" is it's tag
        -- loops = how many loops it will have done when it ends completely
        -- loopsLeft = how many are remaining
        if tag == 'JukeBoxWait' then
            doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
            doTweenX('MoveOutTwo', 'JukeBox', -450, 1.5, 'CircInOut')
            doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
            doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
            doTweenX('MoveOutFive', 'JukeBoxSubText2', -450, 1.5, 'CircInOut')
            doTweenX('MoveOutSix', 'JukeBoxSubText3', -450, 1.5, 'CircInOut')
        end
    end