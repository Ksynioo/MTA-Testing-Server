function startHUD()
    -- Hide Original HUD
    components={    {"ammo","armour","clock","health","money","weapon","wanted","breath", "area_name", "vehicle_name"}   }
    for i=1, #components[1] do
        setPlayerHudComponentVisible(components[1][i], false)
    end
end
addEventHandler("onClientResourceStart", root, startHUD)

local sx, sy = guiGetScreenSize ( )
function createHud()

    --Health
    dxDrawCircle(sx*(90/1920), sy*(800/1080), 20, 0, 3.6*getElementHealth(localPlayer), tocolor(255, 0, 0, 255))
    dxDrawCircle(sx*(90/1920), sy*(800/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(78/1920), sy*(789/1080), sx*(24/1920), sy*(24/1080), "img/heart.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    
    --dxDrawRectangle ( sx*(40/1920), sy*(800/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) ) -- this is rectangular version
    --dxDrawRectangle ( sx*(45/1920), sy*(795/1080), sx*(40/1920), sy*(40/1080/(-100)*getElementHealth(localPlayer)), tocolor ( 255, 0, 0, 255 ) ) -- this is rectangular version

    --Armor
    dxDrawCircle(sx*(130/1920), sy*(740/1080), 20, 0, 3.6*getPedArmor(localPlayer), tocolor(0, 0, 255, 255))
    dxDrawCircle(sx*(130/1920), sy*(740/1080), 15, 0, 360, tocolor(0, 0, 0, 255))
    dxDrawImage(sx*(118/1920), sy*(728/1080), sx*(24/1920), sy*(24/1080), "img/armor.dds", 0, 0, 0, tocolor(255, 255, 255, 255), false)

    --dxDrawRectangle ( sx*(40/1920), sy*(860/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) ) -- this is rectangular version
    --dxDrawRectangle ( sx*(45/1920), sy*(865/1080), sx*(40/1920), sy*(40/1080/(-100)*getPedArmor(localPlayer)), tocolor ( 0, 255, 0, 255 ) ) -- this is rectangular version
end
addEventHandler("onClientRender",root, createHud)