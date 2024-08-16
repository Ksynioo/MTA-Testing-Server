function onPlayerConnect()
    fadeCamera(source,true)
    setCameraMatrix(source, 0, 0, 50, 0, 0, 50)
end
addEventHandler ( "onPlayerJoin", root, onPlayerConnect  )

function onPlayerDeath()
	local x, y, z = getElementPosition(source)
	local skinID = getElementModel(source)
		spawnPlayer ( source, x, y, z, 0, skinID)
		setPedAnimation(source, "crack", "crckdeth2", 0, false, false, false, true)
		setElementHealth(source, 5)
end
addEventHandler("onPlayerWasted", root, onPlayerDeath)

function changeWeatherRandom ( ) 
	setWeather ( math.random ( 0, 10 ) ) 
end 
setTimer ( changeWeatherRandom, 600*1000, 0 ) 

