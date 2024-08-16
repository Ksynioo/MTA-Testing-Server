local sx, sy = guiGetScreenSize()
local font = guiCreateFont("font/font.ttf", 12)

addEventHandler("onClientResourceStart", resourceRoot,
    function()
    phone = guiCreateStaticImage(sx-300, sy-525, 250, 500, "img/phone.jpg", false)
    guiSetVisible(phone,false)

    contacts = guiCreateStaticImage(18, 55, 48, 48  , "img/contacts.jpg", false, phone)
    messages = guiCreateStaticImage(73, 55, 48, 48  , "img/messages.jpg", false, phone)
    appstore = guiCreateStaticImage(128, 55, 48, 48  , "img/appstore.jpg", false, phone)
    gmail = guiCreateStaticImage(183, 55, 48, 48  , "img/gmail.jpg", false, phone)

    label1 = guiCreateLabel(165, 15, 246,30, "lllll", false, phone)
			guiSetFont(label1, font)
      
		local timehour, timeminute = getTime()
		if timehour < 10 then
			timehour = "0"..timehour
		end
		if timeminute < 10 then
			timeminute = "0"..timeminute
    end

		label2 = guiCreateLabel(30, 15, 246,30, timehour..":"..timeminute, false, phone)
			guiSetFont(label2, font)
		label3 = guiCreateLabel(190, 15, 246,30, "100%", false, phone)
			guiSetFont(label3, font)

    back = guiCreateStaticImage(75, 480, 100, 5, "img/back.jpg", false, phone)
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