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
    dxDrawRectangle ( sx*(40/1920), sy*(800/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) )
    dxDrawRectangle ( sx*(45/1920), sy*(795/1080), sx*(40/1920), sy*(40/1080/(-100)*getElementHealth(localPlayer)), tocolor ( 255, 0, 0, 255 ) )

    --Armor
    dxDrawRectangle ( sx*(40/1920), sy*(860/1080), sx*(50/1920), sy*(-50/1080), tocolor ( 0, 0, 0, 255 ) )
    dxDrawRectangle ( sx*(45/1920), sy*(865/1080), sx*(40/1920), sy*(40/1080/(-100)*getPedArmor(localPlayer)), tocolor ( 0, 255, 0, 255 ) )
end
addEventHandler("onClientRender",root, createHud)