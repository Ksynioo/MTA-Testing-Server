function database()
    local connect = dbConnect("sqlite", ":/server.db")
    if connect then
        outputDebugString( "INFO: Connecting to SQLite database... Access Granted!", 4, 0, 255, 0)
    else
        outputDebugString( "INFO: Connecting to SQLite database... Access Denied!")
        stopResource(getThisResource())
    end
end 
addEventHandler("onResourceStart", resourceRoot, database)