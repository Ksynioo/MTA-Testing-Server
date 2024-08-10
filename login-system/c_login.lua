local sx, sy = guiGetScreenSize()

local fontHeader = guiCreateFont("font/RobotoBold.ttf", 20)
local font = guiCreateFont("font/RobotoBold.ttf", 12)

windowMain = guiCreateWindow(sx/2-250, sy/2-125, 500, 250, "Login Panel", false)

    showChat(false)
    showCursor(true)

    -- Login 
    loginLabel = guiCreateLabel(95.5, 20, 250, 50, "Login", false, windowMain)
        guiSetFont(loginLabel, fontHeader)

    nameLoginLabel = guiCreateLabel(14, 50, 250, 50, "Name", false, windowMain)
        guiSetFont(nameLoginLabel, font)
    nameLoginEdit = guiCreateEdit(12, 70, 230, 25, "", false, windowMain)
        
    passwordLoginLabel = guiCreateLabel(14, 104, 250, 50, "Password", false, windowMain)
        guiSetFont(passwordLoginLabel, font)
    passwordLoginEdit = guiCreateEdit(12, 123, 230, 25, "", false, windowMain)
        guiEditSetMasked(passwordLoginEdit, true)


    -- Register
    registerLabel = guiCreateLabel(325, 20, 250, 50, "Register", false, windowMain)
        guiSetFont(registerLabel, fontHeader)

    nameLabelRegister = guiCreateLabel(260, 50, 250, 50, "Name", false, windowMain)
        guiSetFont(nameLabelRegister, font)
    nameEditRegister = guiCreateEdit(258, 70, 230, 25, "", false, windowMain)

    passwordLabelRegister = guiCreateLabel(260, 104, 250, 50, "Password", false, windowMain)
        guiSetFont(passwordLabelRegister, font)
    passwordEditRegister = guiCreateEdit(258, 123, 230, 25, "", false, windowMain)
        guiEditSetMasked(passwordEditRegister, true)
        
    loginButton = guiCreateButton(12, 175, 230, 40, "Login to your account", false, windowMain)
        guiSetProperty(loginButton, "NormalTextColour", "FFAAAAAA")
        guiSetFont(loginButton, font)

    registerButton = guiCreateButton(258, 175, 230, 40, "Register new account", false, windowMain)
        guiSetProperty(registerButton, "NormalTextColour", "FFAAAAAA")
        guiSetFont(registerButton, font)


function closeLoginPanel ()
	guiSetVisible(windowMain,false)
	showCursor(false)
end
addEvent("closeLoginPanel",true)
addEventHandler("closeLoginPanel",getRootElement(),closeLoginPanel)

----Register button----
function onRegisterClick ()
   local username = guiGetText(nameEditRegister)
   local password = guiGetText(passwordEditRegister)
   if username ~= "" and password ~= "" then
     triggerServerEvent("register",getLocalPlayer(),getLocalPlayer(),username,password)
	 showCursor(false)
	 showChat(true)
	 end
end
addEventHandler("onClientGUIClick",registerButton,onRegisterClick,false)

---Login button---
function onLoginClick ()
    local username = guiGetText(nameLoginEdit)
    local password = guiGetText(passwordLoginEdit)
    if username ~= "" and password ~= "" then     
	    triggerServerEvent("login",getLocalPlayer(),getLocalPlayer(),username,password)
		showCursor(true)
		showChat(true)
        
    elseif username == "" and password == "" then
        outputChatBox("You must provide login details!", 255, 50, 50)
        showCursor(true)
	    showChat(true)
	end
end
addEventHandler("onClientGUIClick",loginButton,onLoginClick,false)