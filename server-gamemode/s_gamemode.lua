function onPlayerConnect()
    fadeCamera(source,true)
    setCameraTarget(source, source)
    spawnPlayer (source, 0, 0, 5, 0, 0)
end
addEventHandler ( "onPlayerJoin", root, onPlayerConnect  )