
function register_func ( player, username, password)
    local acc = addAccount(username,password)
    if acc then
        logIn(player,acc,password)
        triggerClientEvent(player,"closeLoginPanel",player)
        spawnPlayer (player, 0, 0, 5, 0, 0)
        setCameraTarget(player,player)
    end
 
end
addEvent("register",true)
addEventHandler("register", getRootElement(),register_func)


function login_func ( player, username, password)
    local acc = getAccount(username,password)
if acc then
    logIn(player,acc,password)
    triggerClientEvent(player,"closeLoginPanel",player)
    spawnPlayer (player, 0, 0, 5, 0, 0)
    setCameraTarget(player,player)
elseif not acc then
    outputChatBox("There is no such account!", player, 255, 50, 50)
else
    outputChatBox("Failed to log in", player, 255, 50, 50)
end
end
addEvent("login",true)
addEventHandler("login",getRootElement(),login_func)