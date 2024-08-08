--[[Clear Chat/Debug]]--
function clearDebugAndChat()
    clearDebugBox()
    clearChatBox()
end
addCommandHandler ( "cls", clearDebugAndChat, true, false )


--[[Add Player Clothes]]--
function addClothesCommand(cmd, type, model, texture)
	type = type and tonumber(type)
	if (not type or string.len(type) > 30) or (not model or string.len(model) > 30) or (not texture or string.len(texture) > 30) then
		outputChatBox("Invalid clothes input! Usage: /[type] [model] [texture]")
		return
	end
	addPedClothes(localPlayer, texture, model, type)
end
addCommandHandler('addclothes', addClothesCommand, true, false)


--[[Remove Player Clothes]]--
function removeClothesCommand(cmd, type)
	type = type and tonumber(type)
	if type and string.len(type) < 30 then
		removePedClothes(localPlayer, type)
	end
end
addCommandHandler('rclothes', removeClothesCommand, true, false)


--[[Vehicle Color Change]]--
function setColorCommand(cmd, ...)
	local vehicle = getPedOccupiedVehicle(localPlayer)

	if not vehicle then
		return
	end

	local colors = {getVehicleColor(vehicle)}
	local args = {...}

	if not ... then
		outputChatBox("Enter colors please!")
		return
	end

	for i = 1, 12 do
		local color = tonumber(args[i]) or -1
		colors[i] = color >= 0 and color or colors[i]
	end
	setVehicleColor(vehicle, unpack(colors))
end
addCommandHandler('carcolor', setColorCommand, true, false)


--[[Vehicle Engine Toggle]]--
function toggleEngine()
	local vehicle = getPedOccupiedVehicle(localPlayer)
	if vehicle and getVehicleController(vehicle) == localPlayer then
		setVehicleEngineState(vehicle, not getVehicleEngineState(vehicle))
	end
end
addCommandHandler("engine", toggleEngine)

bindKey("[", "down", toggleEngine)


--[[Vehicle Lights Toggle]]--
function consoleVehicleLights ()
    if isPedInVehicle(getLocalPlayer()) then 
          playerVehicle = getPedOccupiedVehicle ( getLocalPlayer() )       
          if ( playerVehicle ) then                                      
              if ( getVehicleOverrideLights ( playerVehicle ) ~= 2 ) then  
                  setVehicleOverrideLights ( playerVehicle, 2 )         
                  playSoundFrontEnd (37)
              else
                  setVehicleOverrideLights ( playerVehicle, 1 )
                   playSoundFrontEnd (37)
              end
          end
      end
   end
   bindKey("]", "down", consoleVehicleLights)


   --[[Vehicle Add Tunning]]--
   function addUpgradeCommand(cmd, upgrade)
	local vehicle = getPedOccupiedVehicle(localPlayer)

	if vehicle and upgrade then
		 addVehicleUpgrade(vehicle, tonumber(upgrade) or 0)
	end
end
addCommandHandler('addextra', addUpgradeCommand, true, false)


--[[Vehicle Remove Tunning]]--
function removeUpgradeCommand(cmd, upgrade)
	local vehicle = getPedOccupiedVehicle(localPlayer)

	if vehicle and upgrade then
		removeVehicleUpgrade(vehicle, tonumber(upgrade) or 0)
	end
end
addCommandHandler('rextra', removeUpgradeCommand, true, false)


--[[Vehicle Add All Tunning Parts]]--
function tuneVeh(vehicle)
	local vehicle = getPedOccupiedVehicle(localPlayer)
		if vehicle then
			addVehicleUpgrade(vehicle, "all")
		end
	end
addCommandHandler("addextra.all",tuneVeh, true, false)


--[[Roll up/down Windows]]--
local seatWindows = {
	[0] = 4,
	[1] = 2,
	[2] = 5,
	[3] = 3
}

addCommandHandler("window",
	function()
		local veh = getPedOccupiedVehicle( localPlayer )
		if veh then
			local seat = getPedOccupiedVehicleSeat( localPlayer )
			if seatWindows[seat] and setVehicleWindowOpen( veh, seatWindows[seat], not isVehicleWindowOpen( veh, seatWindows[seat] ) ) then
				outputChatBox( "Window switched!" )
			else
				outputChatBox( "You don't have window!" )
			end
		else
			outputChatBox( "You must be in vehicle!" )
		end
	end
)


--[[Set Player Skin]]--
function setSkinCommand(cmd, skin)
	skin = skin and math.floor(tonumber(skin))
	if skin then
		setElementModel(localPlayer,skin)
	else
		outputChatBox("ERROR: Syntax for this command is: /skin [skinID]" , id, 255, 0, 0)
	end
end
addCommandHandler('skin', setSkinCommand, true, false)


--[[Set Player Drunk Level]]--
addCommandHandler( "drunk",
    function( _, level )
        local level = math.floor( level )
        if level and level > 1 and level <= 255 then
            setCameraDrunkLevel( level )
			setPedWalkingStyle(localPlayer, 124)
        else
			setPedWalkingStyle(localPlayer,0)
			setCameraDrunkLevel(0)
			destroyElement(drink)
        end
    end
)


--[[Set Vehicle Paintjob]]--
function setPaintjobCommand(cmd, paint)
	local vehicle = getPedOccupiedVehicle(localPlayer)
	if not vehicle then return end

	paint = paint and tonumber(paint)

	if not paint then errMsg("Enter paintjob ID please!") return end

	if paint > 3 or string.len(paint) > 1 then
		outputChatBox("Invalid paintjob ID!")
		return
	end
	setVehiclePaintjob(vehicle, paint)
end
addCommandHandler('paintjob', setPaintjobCommand, true, false)