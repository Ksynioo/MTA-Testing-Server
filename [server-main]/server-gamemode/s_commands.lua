--[[Create Vehicle by Model]]--
function createVehicleCommand0 ( thePlayer, commandName, vehicleName )
    local carModel = getVehicleModelFromName ( vehicleName )
    local x, y, z = getElementPosition ( thePlayer )
    local rx, ry, rz = getElementRotation(thePlayer)
    if carModel then
        vehicle = createVehicle ( carModel, x, y, z+0.5 )
        setElementRotation(vehicle, rx, ry, rz)
        warpPedIntoVehicle(thePlayer, vehicle)
    end
end
addCommandHandler ( "car", createVehicleCommand0, true, false)


--[[Create Vehicle by Name]]--
function createVehicleCommand1 ( thePlayer, commandName, vehicleID )
    local carID = getVehicleNameFromModel (vehicleID )
    local x, y, z = getElementPosition ( thePlayer )
    local rx, ry, rz = getElementRotation(thePlayer)
    if carID then
        vehicle = createVehicle (tonumber(vehicleID), x, y, z+0.5 )
        setElementRotation(vehicle, rx, ry, rz)
        warpPedIntoVehicle(thePlayer, vehicle)
    end
end
addCommandHandler ( "car", createVehicleCommand1, true, false)


--[[Remove Vehicle]]--
function destroyvehicle (player)
    local vehicle = getPedOccupiedVehicle(player)
    if vehicle then
        destroyElement(vehicle, vehicle)
    else
        outputChatBox ( "ERROR: You need a vehicle!", player, 255, 0, 0, true)
    end
end
addCommandHandler("dv", destroyvehicle, true, false)




--[[Give the weapon by Weapon Name]]--
function weaponGive(source, command, weaponID, ammo)
        local weapon = getWeaponIDFromName(weaponID)
		giveWeapon(source,weaponID, ammo, true)
end
addCommandHandler("weapon", weaponGive, true, false)


--[[Remove All Weapons]]--
function removeWeapon(player)
    takeAllWeapons(player)
end
addCommandHandler ( "rweapon", removeWeapon, true, false)

--[[Set Player Skin]]--
function setSkinCommand(player, cmd, skin)
    skin = skin and tonumber(skin)
    if getElementModel(player) == skin or isPedDead(player) then
        return
    end
    if skin and skin <= 99999 then
        setElementModel(player, skin)
    else
        outputChatBox("ERROR: Syntax for this command is: /skin [skinID]", player, 255, 0, 0)
    end
end
addCommandHandler("skin", setSkinCommand, true, false)


--[[Flip Occupied Vehicle]]--
function flipVehicle(player, vehicle)
	local vehicle = getPedOccupiedVehicle(player)
	if vehicle then
		local rX, rY, rZ = getElementRotation(vehicle)
		setElementRotation(vehicle, 0, 0, (rX > 90 and rX < 270) and (rZ + 180) or rZ)
	end
end
addCommandHandler('flip', flipVehicle, true, false)


--[[Vehicle God Mode]]--
function toggle_veh_godmode(player)
	local vehicle = getPedOccupiedVehicle(player)
	if vehicle then
		setVehicleDamageProof(vehicle, true)
		outputChatBox("Your car is damage proof", player, 255 ,255, 255)	
	end
end
addCommandHandler("vgod", toggle_veh_godmode, true, false)


--[[Vehicle Lock Doors]]--
function lockcar ( player )
    playervehicle = getPedOccupiedVehicle ( player ) -- define 'playervehicle' as the vehicle the player is in
    if ( playervehicle ) then	-- if a player is in a vehicle
        if isVehicleLocked ( playervehicle ) then		-- and if the vehicle is already locked
			setVehicleLocked ( playervehicle, false )
			outputChatBox("Otworzyłeś pojazd!", player, 255, 255, 255)			-- unlock it
        else                                                 -- otherwise (if it isn't locked) 
            setVehicleLocked ( playervehicle, true )   
				outputChatBox("Zamknąłeś pojazd!", player, 255, 255, 255)	-- lock it
        end
    end
end
addCommandHandler("lock",lockcar)


--[[Vehicle Repair]]--
function repairVeh(player, vehicle)
	local vehicle = getPedOccupiedVehicle(player)
	if (vehicle) then
    fixVehicle(vehicle)
	playSoundFrontEnd(player, 46)
	outputChatBox("Your car has been repaired", player, 255, 255, 255)
	else
	outputChatBox("ERROR: You need a vehicle to repair", player, 255, 255, 255)
	end
end
addCommandHandler("repair", repairVeh, true, false)


--[[Get Player Coords]]--
function GetPosition ( player ) 
    local x, y, z =  getElementPosition( player ) 
    local rx, ry, rz = getElementRotation(player)
 outputConsole("Pos: "..x..", "..y..", "..z.."\nRotation: "..rx..", "..ry..", "..rz) 
end 
addCommandHandler ( "coords", GetPosition, true, false) 



--[[Give Player Jetpack]]--
addCommandHandler ( "jetpack",
    function ( player )
        setPedWearingJetpack ( player, not isPedWearingJetpack ( player ) )
    end, true, false)


    
--[[Set Player Invisible]]--
    function Invis(thePlayer)  
        if getElementAlpha(thePlayer) == 0 then
          setElementAlpha(thePlayer, 255)  
            else
          setElementAlpha(thePlayer, 0)    
         end 
         
     end
     addCommandHandler("inv", Invis, true, false)   


--[[Teleport Player to coords]]--
function teleportToPos(player, command, x, y, z)
		local position = getElementPosition(player, x, y, z)
			setElementPosition(player, x, y, z)
end
addCommandHandler("tp", teleportToPos, true, false)


--[[Set Player Interior]]--
function interiorChange(player, command, interiorID)
    local interior = getElementInterior(player, interiorID)
        setElementInterior(player, interiorID)
end
addCommandHandler("interior", interiorChange, true, false)


--[[Set Vehicle Plate]]--
function PlateText(thePlayer,commandName,text)
	local Vehicle = getPedOccupiedVehicle(thePlayer)
	if Vehicle then
		if text then
			setVehiclePlateText( Vehicle, text )
		else
			outputChatBox("ERROR: Syntax for this command is: /setplate [message]",thePlayer, 255, 0, 0)
		end
	else
		outputChatBox("ERROR: You must be in a Vehicle.",thePlayer)
	end
end
addCommandHandler("setplate",PlateText, true, false)

--[[Set Time]]--
function timeSet(player, command, hour, minute)
    local currrentHours, currentMinute = getTime()
    hours = hours and tonumber(hours) or currrentHours
    minutes = minutes and tonumber(minutes) or currentMinute
    setTime(hour, minute)
    outputChatBox("Changed the server time to: "..hour..":"..minute)
end

addCommandHandler("timeset", timeSet, true, false)

--[[Give Player Money]]--
function moneyGive(player, command, moneyID)
    if player then
        local money = getPlayerMoney(player)
        givePlayerMoney(player, tonumber(moneyID))
    else
        outputChatBox("Player is not online, or call function failed.", player)
    end
end
addCommandHandler("givecash", moneyGive, true, false)

--[[Set Player Money]]--
function moneySet(player, command,moneyID)
    if player then
        local money = getPlayerMoney(player)
        setPlayerMoney(player, tonumber(moneyID))
    else
        outputChatBox("Player is not online, or call function failed.", player)
    end
end
addCommandHandler("setmoney", moneySet, true, false)

function revivePlayer(source, command)
    local health = getElementHealth(source)
    setElementHealth(source,100)
    setElementData(source, "thirst", 100)
    setElementData(source, "food", 100)
end
addCommandHandler("revive", revivePlayer, true, false)

function giveArmorToPlayer(source, command)
    local armor = getPedArmor(source)
    setPedArmor(source,100)
end
addCommandHandler("armor", giveArmorToPlayer, true, false)

--[[Set Weather]]--
function changeWeather(player, command, weatherID)
	if (not weatherID or not tonumber(weatherID)) then
		outputChatBox("You must enter a valid weather ID number", player, 0, 0, 0)
		return false
	end
	setWeather(weatherID)
end
addCommandHandler("weather", changeWeather, true, false)

--[[Set Player Fightstyle]]--
function setFightStyle ( player, commandName, id )
	if player and id then                                                     
		local status = setPedFightingStyle ( player, tonumber(id) )       
		if not status then                                              
			outputConsole ( "Failed to set fighting style.", player ) 
		end
	end
end
addCommandHandler ( "fs",  setFightStyle)