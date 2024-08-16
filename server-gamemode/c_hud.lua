setElementData(localPlayer, "food", 100)
setElementData(localPlayer, "thirst", 100)
setElementData(localPlayer,"stamina",100)

local sx, sy = guiGetScreenSize ( )
local number = 1
local hunger = getElementData(localPlayer, "food")
local thirst = getElementData(localPlayer, "thirst")
local stamina = getElementData(localPlayer,"stamina")
local HUDcomponents={    {"ammo","armour","clock","health","money","weapon","wanted","breath", "area_name", "vehicle_name"}   }

function hideOriginalHUD()
    for i=1, #HUDcomponents[1] do
        setPlayerHudComponentVisible(HUDcomponents[1][i], false)
    end
end
addEventHandler("onClientResourceStart", root, hideOriginalHUD)

function createHud()

    --Health
    dxDrawCircle(sx*(80/1920), sy*(800/1080), 20, 0, 3.6*getElementHealth(localPlayer), tocolor(255, 0, 0, 255))
    dxDrawCircle(sx*(80/1920), sy*(800/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(68/1920), sy*(789/1080), sx*(24/1920), sy*(24/1080), "img/heart.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    
    --dxDrawRectangle ( sx*(40/1920), sy*(800/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) ) -- this is rectangular version
    --dxDrawRectangle ( sx*(45/1920), sy*(795/1080), sx*(40/1920), sy*(40/1080/(-100)*getElementHealth(localPlayer)), tocolor ( 255, 0, 0, 255 ) ) -- this is rectangular version

    --Armor
    dxDrawCircle(sx*(130/1920), sy*(740/1080), 20, 0, 3.6*getPedArmor(localPlayer), tocolor(0, 0, 255, 255))
    dxDrawCircle(sx*(130/1920), sy*(740/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(118/1920), sy*(728/1080), sx*(24/1920), sy*(24/1080), "img/armor.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)

    --dxDrawRectangle ( sx*(40/1920), sy*(860/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) ) -- this is rectangular version
    --dxDrawRectangle ( sx*(45/1920), sy*(865/1080), sx*(40/1920), sy*(40/1080/(-100)*getPedArmor(localPlayer)), tocolor ( 0, 255, 0, 255 ) ) -- this is rectangular version

    --Hunger
    dxDrawCircle(sx*(201/1920), sy*(700/1080), 20, 0, (getElementData(localPlayer,"food")) / 100 * 360, tocolor(150, 75, 0, 255))
    dxDrawCircle(sx*(201/1920), sy*(700/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(189/1920), sy*(688/1080), sx*(24/1920), sy*(24/1080), "img/hunger.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)

    --Thirst
    dxDrawCircle(sx*(326/1920), sy*(700/1080), 20, 0, (getElementData(localPlayer,"thirst")) / 100 * 360, tocolor(0,255,255, 255))
    dxDrawCircle(sx*(326/1920), sy*(700/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(314/1920), sy*(688/1080), sx*(24/1920), sy*(24/1080), "img/thirst.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)

    
    --Oxygen
    dxDrawCircle(sx*(395/1920), sy*(740/1080), 20, 0, getPedOxygenLevel(localPlayer)*3.6/10, tocolor(119,192,216, 255))
    dxDrawCircle(sx*(395/1920), sy*(740/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(383.5/1920), sy*(728/1080), sx*(24/1920), sy*(24/1080), "img/oxygen.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)

    --Stamina
    dxDrawCircle(sx*(445/1920), sy*(800/1080), 20, 0, (getElementData(localPlayer,"stamina")) / 100 * 360, tocolor(255,255,0, 255))
    dxDrawCircle(sx*(445/1920), sy*(800/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(432/1920), sy*(789/1080), sx*(24/1920), sy*(24/1080), "img/stamina.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    
end
addEventHandler("onClientRender",root, createHud)

function getElementSpeed(element,unit)
	if (unit == nil) then unit = 0 end
	if (isElement(element)) then
		local x,y,z = getElementVelocity(element)
		if (unit=="mph" or unit==1 or unit =='1') then
			return (x^2 + y^2 + z^2) ^ 0.5 * 100
		else
			return (x^2 + y^2 + z^2) ^ 0.5 * 1.8 * 100
		end
	else
		outputDebugString("Not an element. Can't get speed")
		return false
	end
end

function staminaFunctions()
    local stamina = getElementData(localPlayer,"stamina") or 100
        if (not isPedInVehicle(localPlayer)) and (not doesPedHaveJetPack(localPlayer)) and (isPedOnGround(localPlayer)) then
            local speed = getElementSpeed(localPlayer)
            local speedMath = math.ceil(speed) / number 
    
        if getElementData(localPlayer,"tired") == true then
            if stamina == 100 then return end
                setElementData(localPlayer,"stamina", stamina + 5)
            else
                if speed <= 25 then
                number = 100 
            else
                number = 10
            end
            setElementData(localPlayer,"stamina", stamina - speedMath)
        end
    
    if speed <= 1 then
        if stamina == 100 then return end
            setElementData(localPlayer,"stamina", stamina + 5)
        end
    else
        if stamina == 100 then return end
            setElementData(localPlayer,"stamina", stamina + 5)
        end
    end
    setTimer(staminaFunctions,1000,0)


function staminaLevel()
        local stamina = getElementData(localPlayer,"stamina") or 100
            if stamina <= 90 then
                toggleControl("sprint", true)
            end
        
            if stamina < 0 then
                setElementData(localPlayer,"stamina", 0)
                toggleControl("sprint", false)
            end
        
            if stamina == 0 then
                toggleControl("sprint", false)
            end
        end
addEventHandler("onClientPreRender",root,staminaLevel)

--Hunger
setTimer(function()
    local hunger = getElementData(localPlayer, "food")
        setElementData(localPlayer, "food", hunger-1)
            if hunger == 0 then
                setElementData(localPlayer, "food", 0)
                setElementHealth(localPlayer, getElementHealth(localPlayer)-5)
            end
end, 600000, 0) -- -1 food per 10 minute 

function eat()
	local eating = getElementData(localPlayer, "food")
	if eating<90 then
		setElementData(localPlayer, "food", 100)
	end
end
addCommandHandler("eat", eat)


--Thirst
setTimer(function()
    local thirst = getElementData(localPlayer, "thirst")
        setElementData(localPlayer, "thirst", thirst-1)
        if thirst == 0 then
            setElementData(localPlayer, "thirst", 0)
            setElementHealth(localPlayer, getElementHealth (localPlayer) -5)
        end
end, 300000, 0) -- -1 thirsty per 5 minute 

function drink()
	local drinking = getElementData(localPlayer, "thirst")
	if drinking<90 then
		setElementData(localPlayer, "thirst", 100)
	end
end
addCommandHandler("drink", drink)


-- This provides Hunger and Thirst to not go under 0 
function fixData()
	local thirst = getElementData(localPlayer, "thirst")
	local hunger = getElementData(localPlayer, "food")
	if (thirst>100) then
		setElementData(localPlayer, "thirst", 100)
	end
	if (hunger>100) then
		setElementData(localPlayer, "food", 100)
	end
end
addEventHandler("onClientRender", root, fixData)


addEventHandler("onClientRender", root,
    function()
        if getElementHealth(localPlayer) <= 5 then
            toggleAllControls(false)
            
			dxDrawImage(sx*(0/1920),sy*(0/1080), sx*(1920/1920), sy*(1080/1080), "img/bloodscreen.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)

			dxDrawText("NIEPRZYTOMNY",sx*(960/1920), sy*(850/1080), sx*(960/1920), sy*(850/1080), tocolor(255, 255, 255, 255), 2, 2, "default-bold", "center", "center", false, false, false, false, false)

			dxDrawText("05:00",sx*(960/1920), sy*(900/1080), sx*(960/1920), sy*(900/1080), tocolor(255, 255, 255, 255), 2, 2, "default-bold", "center", "center", false, false, false, false, false)

            dxDrawText("Naciśnij G aby powiadomić medyków",sx*(960/1920), sy*(950/1080), sx*(960/1920), sy*(950/1080), tocolor(255, 255, 255, 255), 2, 2, "default-bold", "center", "center", false, false, false, false, false) 

            setElementData(localPlayer, "thirst", 100)
            setElementData(localPlayer, "food", 100)
        else
            toggleAllControls(true)
        end
    end)
addEventHandler("OnClientPlayerSpawn", getLocalPlayer(),function()
end)