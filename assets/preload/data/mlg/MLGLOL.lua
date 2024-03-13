function onUpdatePost()
    if ratingFC == '' then -- if the FC is nothing
        setProperty('scoreTxt.text', 'Ws: ' .. score .. ' | Party Pooper: ' .. misses .. ' | Party: 0%')
        setTextFont('scoreTxt', 'vcr.ttf');
    else
        setProperty('scoreTxt.text', 'Ws: ' .. score .. ' | Party Pooper: ' .. misses .. ' | Party: ' ..round(rating * 100, 2).. '%')
    end
end

function round(x, n)
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end
