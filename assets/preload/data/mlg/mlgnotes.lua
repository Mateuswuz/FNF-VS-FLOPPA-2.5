local turnvalue = 20
function onBeatHit()

turnvalue = -100
if curBeat % 2 == 0 then
turnvalue = 100
end



setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)

doTweenAngle('iconTween1','iconP1',0,crochet/500,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/500,'circOut')



end

function onCreatePost()

setObjectOrder('iconP1',getObjectOrder('iconP2'))

end