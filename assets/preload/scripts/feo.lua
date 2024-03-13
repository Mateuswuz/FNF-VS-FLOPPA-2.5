local coloredWin = false
local coloredBase = false
local coloredLose = false

function onUpdate()

    if getProperty('healthBar.percent') >= 80 then
        if coloredWin == false then
            coloredWin = true
            doTweenColor('healthText', 'healthText', '00FF00', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredWin = false
    end

    if getProperty('healthBar.percent') < 80 and getProperty('healthBar.percent') > 20 then
        if coloredBase == false then
            coloredBase = true
            doTweenColor('healthText', 'healthText', 'ffffff', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredBase = false
    end

    if getProperty('healthBar.percent') <= 20 then
        if coloredLose == false then
            coloredLose = true
            doTweenColor('healthText', 'healthText', 'ff0000', 0.2 + (crochet/5000), 'linear')
        end
    else
        coloredLose = false
    end
end