local sx, sy = guiGetScreenSize()

addEventHandler("onClientResourceStart", resourceRoot,
    function()
    phone = guiCreateStaticImage(sx-300, sy-600, 300, 600, "img/phone.dds", false)
    guiSetVisible(phone,false)
    back = guiCreateStaticImage(75, 559, 150, 4, "img/back.dds", false, phone)
    addEventHandler ( "onClientGUIClick", back, phone_close, false )
end)

function phone_open(button)
    if button == "mouse3" then
		guiSetVisible(phone, true)
		setPedAnimation(localPlayer,"ped", "phone_in", 0, false)
		showCursor( true)
    end
end
addEventHandler( "onClientKey", root, phone_open)

function phone_close(button)
    if button == "left" then
		guiSetVisible(phone, false)
		showCursor( false)
		setPedAnimation(localPlayer,"ped", "phone_out", 0, false, true, false, false, 250)
    end
end
addEventHandler( "onClientKey", root, phone_close)