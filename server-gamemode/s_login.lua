
function register_func ( player, username, password)
    local account = addAccount(username,password)
    if account then
        logIn(player,account,password)
        triggerClientEvent(player,"closeLoginPanel",player)
    end
end
addEvent("register",true)
addEventHandler("register", getRootElement(),register_func)


function login_func ( player, username, password)
    local account = getAccount(username,password)
if account then
    logIn(player,account,password)
    triggerClientEvent(player,"closeLoginPanel",player)
elseif not account then
    outputChatBox("There is no such account!", player, 255, 50, 50)
else
    outputChatBox("Failed to log in", player, 255, 50, 50)
end
end
addEvent("login",true)
addEventHandler("login",getRootElement(),login_func)
