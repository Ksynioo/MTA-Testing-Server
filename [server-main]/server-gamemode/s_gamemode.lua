function onPlayerConnect()
    fadeCamera(source,true)
    setCameraMatrix(source, 1400.677734375, -989.0478515625, 65.039848327637, 1400.677734375, -989.0478515625, 65.039848327637)
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


addCommandHandler("ids",
function(player, command)
	players = getElementsByType("player")
	for id,p in ipairs(players) do
		outputChatBox(getPlayerName(p) .. ": " .. tostring(id), player)
	end
end)

function getIDFromPlayer(player)
	if player then
		local theid
		players = getElementsByType("player")
		for id,p in ipairs(players) do
			if player == p then
				theid = i
			end
		end
		return theid
	else return false end
end

function getPlayerFromID(theID)
	if theID then
		theID = tonumber(theID)
		local theplayer
		players = getElementsByType("player")
		for id,p in ipairs(players) do
			if theID == id then
				theplayer = p
			end
		end
		return theplayer
	else return false end
end