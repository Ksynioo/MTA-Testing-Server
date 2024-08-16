function onPlayerLogin(_,account)

    -- Load Player Position
    local x, y, z = getAccountData(account, "server.posX"), getAccountData(account, "server.posY"), getAccountData(account, "server.posZ") 

    -- Load Player Rotation
    local rx, ry, rz = getAccountData(account, "server.posRX"), getAccountData(account, "server.posRY"), getAccountData(account, "server.posRZ") 

    -- Load Player Interior
    local playerInterior = getAccountData(account, "server.interior")
    
    -- Load Player Dimension
    local playerDimension = getAccountData(account, "server.dimension")

    -- Load Player Model
    local playerModel = getAccountData(account, "server.model")

    -- Load Player Health
    local playerHealth = getAccountData(account, "server.health") 

    -- Load Player Armor
    local playerArmor = getAccountData(account, "server.armor") 
    
    -- Load Player Money
    local playerMoney = getAccountData(account, "server.money") 

    -- Load Player Fightstyle
    local playerFightstyle = getAccountData(account, "server.fightstyle") 

    -- Load Player Fat
    local playerFat = getAccountData(account, "server.fat")

    -- Load Player Stamina
    local playerStamina = getAccountData(account, "server.stamina")

    -- Load Player Muscle
    local playerMuscle = getAccountData(account, "server.muscle")

    -- Load Player Max Health
    local playerMaxHealth = getAccountData(account, "server.maxhealth")

    -- Load Player Max Armor
    local playerMaxArmor = getAccountData(account, "server.maxarmor")

    -- Load Player Weapon Skill
    local playerPistolSkill = getAccountData(account, "server.pistol")
    local playerSilencedPistolSkill = getAccountData(account, "server.silencedpistol")
    local playerDesertEagleSkill = getAccountData(account, "server.deserteagle")
    local playerShotgunSkill = getAccountData(account, "server.shotgun")
    local playerSawnOffSkill = getAccountData(account, "server.sawnoff")
    local playerCombatShotgunSkill = getAccountData(account, "server.combatshotgun")
    local playerMicroUziSkill = getAccountData(account, "server.microuzi")
    local playerMP5Skill = getAccountData(account, "server.mp5")
    local playerAK47Skill = getAccountData(account, "server.ak47")
    local playerM4Skill = getAccountData(account, "server.m4")
    local playerSniperSkill = getAccountData(account, "server.sniper")



    -- Load Player Clothes
    local texture0, model0 = getAccountData(account,"server.texture0"), getAccountData(account, "server.model0")
    local texture1, model1 = getAccountData(account,"server.texture1"), getAccountData(account, "server.model1")
    local texture2, model2 = getAccountData(account,"server.texture2"), getAccountData(account, "server.model2")
    local texture3, model3 = getAccountData(account,"server.texture3"), getAccountData(account, "server.model3")
    local texture4, model4 = getAccountData(account,"server.texture4"), getAccountData(account, "server.model4")
    local texture5, model5 = getAccountData(account,"server.texture5"), getAccountData(account, "server.model5")
    local texture6, model6 = getAccountData(account,"server.texture6"), getAccountData(account, "server.model6")
    local texture7, model7 = getAccountData(account,"server.texture7"), getAccountData(account, "server.model7")
    local texture8, model8 = getAccountData(account,"server.texture8"), getAccountData(account, "server.model8")
    local texture9, model9 = getAccountData(account,"server.texture9"), getAccountData(account, "server.model9")
    local texture10, model10 = getAccountData(account,"server.texture10"), getAccountData(account, "server.model10")
    local texture11, model11 = getAccountData(account,"server.texture11"), getAccountData(account, "server.model11")
    local texture12, model12 = getAccountData(account,"server.texture12"), getAccountData(account, "server.model12")
    local texture13, model13 = getAccountData(account,"server.texture13"), getAccountData(account, "server.model13")
    local texture14, model14 = getAccountData(account,"server.texture14"), getAccountData(account, "server.model14")
    local texture15, model15 = getAccountData(account,"server.texture15"), getAccountData(account, "server.model15")
    local texture16, model16 = getAccountData(account,"server.texture16"), getAccountData(account, "server.model16")
    local texture17, model17 = getAccountData(account,"server.texture17"), getAccountData(account, "server.model17")

    -- Load Player Weapons
    local playerWeaponSlot0 = getAccountData(account, "server.weaponslot0")
    local playerWeaponSlot1 = getAccountData(account, "server.weaponslot1")
    local playerWeaponSlot2 = getAccountData(account, "server.weaponslot2")
    local playerWeaponSlot3 = getAccountData(account, "server.weaponslot3")
    local playerWeaponSlot4 = getAccountData(account, "server.weaponslot4")
    local playerWeaponSlot5 = getAccountData(account, "server.weaponslot5")
    local playerWeaponSlot6 = getAccountData(account, "server.weaponslot6")
    local playerWeaponSlot7 = getAccountData(account, "server.weaponslot7")
    local playerWeaponSlot8 = getAccountData(account, "server.weaponslot8")
    local playerWeaponSlot9 = getAccountData(account, "server.weaponslot9")
    local playerWeaponSlot10 = getAccountData(account, "server.weaponslot10")
    local playerWeaponSlot11 = getAccountData(account, "server.weaponslot11")
    local playerWeaponSlot12 = getAccountData(account, "server.weaponslot12")

    -- Load Weapon Ammo
    local playerWeaponAmmo0 = getAccountData(account, "server.weaponammo0")
    local playerWeaponAmmo1 = getAccountData(account, "server.weaponammo1")
    local playerWeaponAmmo2 = getAccountData(account, "server.weaponammo2")
    local playerWeaponAmmo3 = getAccountData(account, "server.weaponammo3")
    local playerWeaponAmmo4 = getAccountData(account, "server.weaponammo4")
    local playerWeaponAmmo5 = getAccountData(account, "server.weaponammo5")
    local playerWeaponAmmo6 = getAccountData(account, "server.weaponammo6")
    local playerWeaponAmmo7 = getAccountData(account, "server.weaponammo7")
    local playerWeaponAmmo8 = getAccountData(account, "server.weaponammo8")
    local playerWeaponAmmo9 = getAccountData(account, "server.weaponammo9")
    local playerWeaponAmmo10 = getAccountData(account, "server.weaponammo10")
    local playerWeaponAmmo11 = getAccountData(account, "server.weaponammo11")
    local playerWeaponAmmo12 = getAccountData(account, "server.weaponammo12")

    
    -- Spawn Player and set their camera in
    spawnPlayer (source, x, y, z, 0, tonumber(playerModel))
    setCameraTarget(source, getCameraTarget(source))
    --Set Player Interior
    setElementInterior(source, playerInterior)
    -- Set Player Dimension
    setElementDimension(source, playerDimension)
    -- Set Player Health
    setElementHealth(source, playerHealth)
    -- Set Player Armor
    setPedArmor(source, playerArmor)
    -- Set Player Model
    setElementModel(source, playerModel)
    -- Set Player Position
    setElementPosition(source, x, y, z)
    -- Set Player Rotation
    setElementRotation(source, rx, ry, rz)
    -- Set Player Money
    setPlayerMoney(source, playerMoney)
    -- Set Player Armor
    setPedArmor(source, playerArmor)
    -- Set Player Fighting Style
    setPedFightingStyle(source, playerFightstyle)
    -- Set Player Fat
    setPedStat(source, 21, playerFat)
    -- Set Player Stamina
    setPedStat(source, 22, playerStamina)
    -- Set Player Muscle
    setPedStat(source, 23, playerMuscle)
    -- Set Player Max Health
    setPedStat(source, 24, playerMaxHealth)
    -- Set Player Max Armor
    setPedStat(source, 164, playerMaxArmor)

    -- Set Player Weapon Skill
    setPedStat(source, 69, playerPistolSkill)
    setPedStat(source, 70, playerSilencedPistolSkill)
    setPedStat(source, 71, playerDesertEagleSkill)
    setPedStat(source, 72, playerShotgunSkill)
    setPedStat(source, 73, playerSawnOffSkill)
    setPedStat(source, 74, playerCombatShotgunSkill)
    setPedStat(source, 75, playerMicroUziSkill)
    setPedStat(source, 76, playerMP5Skill)
    setPedStat(source, 77, playerAK47Skill)
    setPedStat(source, 78, playerM4Skill)
    setPedStat(source, 79, playerSniperSkill)

    

    -- Set Player Clothes
    if playerModel == 0 then
    addPedClothes(source, tostring(texture0), tostring(model0), 0)
    addPedClothes(source, tostring(texture1), tostring(model1), 1)
    addPedClothes(source, tostring(texture2), tostring(model2), 2)
    addPedClothes(source, tostring(texture3), tostring(model3), 3)
    addPedClothes(source, tostring(texture4), tostring(model4), 4)
    addPedClothes(source, tostring(texture5), tostring(model5), 5)
    addPedClothes(source, tostring(texture6), tostring(model6), 6)
    addPedClothes(source, tostring(texture7), tostring(model7), 7)
    addPedClothes(source, tostring(texture8), tostring(model8), 8)
    addPedClothes(source, tostring(texture9), tostring(model9), 9)
    addPedClothes(source, tostring(texture10), tostring(model10), 10)
    addPedClothes(source, tostring(texture11), tostring(model11), 11)
    addPedClothes(source, tostring(texture12), tostring(model12), 12)
    addPedClothes(source, tostring(texture13), tostring(model13), 13)
    addPedClothes(source, tostring(texture14), tostring(model14), 14)
    addPedClothes(source, tostring(texture15), tostring(model15), 15)
    addPedClothes(source, tostring(texture16), tostring(model16), 16)
    addPedClothes(source, tostring(texture17), tostring(model17),17)
    end

    -- Set Player Weapons
    giveWeapon(source, playerWeaponSlot0)
    giveWeapon(source, playerWeaponSlot1)
    giveWeapon(source, playerWeaponSlot2)
    giveWeapon(source, playerWeaponSlot3)
    giveWeapon(source, playerWeaponSlot4)
    giveWeapon(source, playerWeaponSlot5)
    giveWeapon(source, playerWeaponSlot6)
    giveWeapon(source, playerWeaponSlot7)
    giveWeapon(source, playerWeaponSlot8)
    giveWeapon(source, playerWeaponSlot9)
    giveWeapon(source, playerWeaponSlot10)
    giveWeapon(source, playerWeaponSlot11)
    giveWeapon(source, playerWeaponSlot12)

    -- Set Player Weapon Ammo
    setWeaponAmmo(source, playerWeaponSlot0, tonumber(playerWeaponAmmo0))
    setWeaponAmmo(source, playerWeaponSlot1, tonumber(playerWeaponAmmo1))
    setWeaponAmmo(source, playerWeaponSlot2, tonumber(playerWeaponAmmo2))
    setWeaponAmmo(source, playerWeaponSlot3, tonumber(playerWeaponAmmo3))
    setWeaponAmmo(source, playerWeaponSlot4, tonumber(playerWeaponAmmo4))
    setWeaponAmmo(source, playerWeaponSlot5, tonumber(playerWeaponAmmo5))
    setWeaponAmmo(source, playerWeaponSlot6, tonumber(playerWeaponAmmo6))
    setWeaponAmmo(source, playerWeaponSlot7, tonumber(playerWeaponAmmo7))
    setWeaponAmmo(source, playerWeaponSlot8, tonumber(playerWeaponAmmo8))
    setWeaponAmmo(source, playerWeaponSlot9, tonumber(playerWeaponAmmo9))
    setWeaponAmmo(source, playerWeaponSlot10, tonumber(playerWeaponAmmo10))
    setWeaponAmmo(source, playerWeaponSlot11, tonumber(playerWeaponAmmo11))
    setWeaponAmmo(source, playerWeaponSlot12, tonumber(playerWeaponAmmo12))
end
addEventHandler("onPlayerLogin", root, onPlayerLogin)


function onPlayerQuit()
    local playerAccount = getPlayerAccount(source) 
    if (playerAccount) then
        getCameraTarget(source)
        -- Get Player Position
        local x, y, z = getElementPosition(source)
        -- Get Player Rotation
        local rx, ry, rz = getElementRotation(source)
        -- Get Player Interior
        local playerInterior = getElementInterior(source)
        -- Get Player Dimension
        local playerDimension = getElementDimension(source)
        -- Get Player Model
        local playerModel = getElementModel(source)
        -- Get Player Health
        local playerHealth = getElementHealth(source)
        -- Get Player Armor
        local playerArmor = getPedArmor(source)
        -- Get Player Money
        local playerMoney = getPlayerMoney(source)
        -- Get Player Fighting Style
        local playerFightstyle = getPedFightingStyle(source)
        -- Get Player Fat 
        local playerFat = getPedStat(source, 21)
        -- Get Player Stamina
        local playerStamina = getPedStat(source, 22)
        -- Get Player Muscle 
        local playerMuscle = getPedStat(source, 23)
        -- Get Player Max Health
        local playerMaxHealth = getPedStat(source, 24)
        -- Get Player Max Armor
        local playerMaxArmor = getPedStat(source, 164)

        -- Get Player Weapon Skill
        local playerPistolSkill = getPedStat(source, 69)
        local playerSilencedPistolSkill = getPedStat(source, 70)
        local playerDesertEagleSkill = getPedStat(source, 71)
        local playerShotgunSkill = getPedStat(source, 72)
        local playerSawnOffSkill = getPedStat(source, 73)
        local playerCombatShotgunSkill = getPedStat(source, 74)
        local playerMicroUziSkill = getPedStat(source, 75)
        local playerMP5Skill = getPedStat(source, 76)
        local playerAK47Skill = getPedStat(source, 77)
        local playerM4Skill = getPedStat(source, 78)
        local playerSniperSkill = getPedStat(source, 79)

        -- Get Player Clothes
        local texture0, model0 = getPedClothes(source, 0)
        local texture1, model1 = getPedClothes(source, 1)
        local texture2, model2 = getPedClothes(source, 2)
        local texture3, model3 = getPedClothes(source, 3)
        local texture4, model4 = getPedClothes(source, 4)
        local texture5, model5 = getPedClothes(source, 5)
        local texture6, model6 = getPedClothes(source, 6)
        local texture7, model7 = getPedClothes(source, 7)
        local texture8, model8 = getPedClothes(source, 8)
        local texture9, model9 = getPedClothes(source, 9)
        local texture10, model10 = getPedClothes(source, 10)
        local texture11, model11 = getPedClothes(source, 11)
        local texture12, model12 = getPedClothes(source, 12)
        local texture13, model13 = getPedClothes(source, 13)
        local texture14, model14 = getPedClothes(source, 14)
        local texture15, model15 = getPedClothes(source, 15)
        local texture16, model16 = getPedClothes(source, 16)
        local texture17, model17 = getPedClothes(source, 17)
        
        -- Get Player Weapon
        local playerWeaponSlot0 = getPedWeapon(source, 0)
        local playerWeaponSlot1 = getPedWeapon(source, 1)
        local playerWeaponSlot2 = getPedWeapon(source, 2)
        local playerWeaponSlot3 = getPedWeapon(source, 3)
        local playerWeaponSlot4 = getPedWeapon(source, 4)
        local playerWeaponSlot5 = getPedWeapon(source, 5)
        local playerWeaponSlot6 = getPedWeapon(source, 6)
        local playerWeaponSlot7 = getPedWeapon(source, 7)
        local playerWeaponSlot8 = getPedWeapon(source, 8)
        local playerWeaponSlot9 = getPedWeapon(source, 9)
        local playerWeaponSlot10 = getPedWeapon(source, 10)
        local playerWeaponSlot11 = getPedWeapon(source, 11)
        local playerWeaponSlot12 = getPedWeapon(source, 12)

        local playerWeaponAmmo0 = getPedTotalAmmo(source, 0)
        local playerWeaponAmmo1 = getPedTotalAmmo(source, 1)
        local playerWeaponAmmo2 = getPedTotalAmmo(source, 2)
        local playerWeaponAmmo3 = getPedTotalAmmo(source, 3)
        local playerWeaponAmmo4 = getPedTotalAmmo(source, 4)
        local playerWeaponAmmo5 = getPedTotalAmmo(source, 5)
        local playerWeaponAmmo6 = getPedTotalAmmo(source, 6)
        local playerWeaponAmmo7 = getPedTotalAmmo(source, 7)
        local playerWeaponAmmo8 = getPedTotalAmmo(source, 8)
        local playerWeaponAmmo9 = getPedTotalAmmo(source, 9)
        local playerWeaponAmmo10 = getPedTotalAmmo(source, 10)
        local playerWeaponAmmo11 = getPedTotalAmmo(source, 11)
        local playerWeaponAmmo12 = getPedTotalAmmo(source, 12)


        -- Save Player Model
        setAccountData(playerAccount, "server.model", playerModel)
        -- Save Player Health
        setAccountData(playerAccount, "server.health", playerHealth) 
        --Save Player Armor
        setAccountData(playerAccount, "server.armor", playerArmor) 
        -- Save Player X, Y, Z Position
        setAccountData(playerAccount, "server.posX", x) 
        setAccountData(playerAccount, "server.posY",y) 
        setAccountData(playerAccount, "server.posZ", z) 
        -- Save Player X, Y, Z Rotation
        setAccountData(playerAccount, "server.posRX", rx)
        setAccountData(playerAccount, "server.posRY", ry)
        setAccountData(playerAccount, "server.posRZ", rz)
        -- Save Player Interior
        setAccountData(playerAccount, "server.interior", playerInterior)
        -- Save Player Dimension
        setAccountData(playerAccount, "server.dimension", playerDimension)
        -- Save Player Money
        setAccountData(playerAccount, "server.money", playerMoney) 
        -- Save Player Fightstyle
        setAccountData(playerAccount, "server.fightstyle", playerFightstyle) 
        -- Save Player Fat
        setAccountData(playerAccount, "server.fat", playerFat)
        -- Save Player Muscle
        setAccountData(playerAccount, "server.muscle", playerMuscle)
        --Save Player Stamina
        setAccountData(playerAccount, "server.stamina", playerStamina)
        -- Save Player Max Health
        setAccountData(playerAccount, "server.maxhealth", playerMaxHealth)
        -- Save Player Max Armor
        setAccountData(playerAccount, "server.maxarmor", playerMaxArmor)

        --Save Player Weapon Skill
        setAccountData(playerAccount, "server.pistol", playerPistolSkill)
        setAccountData(playerAccount, "server.silencedpistol", playerSilencedPistolSkill)
        setAccountData(playerAccount, "server.deserteagle", playerDesertEagleSkill)
        setAccountData(playerAccount, "server.shotgun", playerShotgunSkill)
        setAccountData(playerAccount, "server.sawnoff", playerSawnOffSkill)
        setAccountData(playerAccount, "server.combatshotgun", playerCombatShotgunSkill)
        setAccountData(playerAccount, "server.microuzi", playerMicroUziSkill)
        setAccountData(playerAccount, "server.mp5", playerMP5Skill)
        setAccountData(playerAccount, "server.ak47", playerAK47Skill)
        setAccountData(playerAccount, "server.m4", playerM4Skill)
        setAccountData(playerAccount, "server.sniper", playerSniperSkill)

        
        --Save Player Clothes
        setAccountData(playerAccount, "server.texture0", texture0)
        setAccountData(playerAccount, "server.model0", model0)
        setAccountData(playerAccount, "server.texture1", texture1)
        setAccountData(playerAccount, "server.model1", model1)
        setAccountData(playerAccount, "server.texture2", texture2)
        setAccountData(playerAccount, "server.model2", model2)
        setAccountData(playerAccount, "server.texture3", texture3)
        setAccountData(playerAccount, "server.model3", model3)
        setAccountData(playerAccount, "server.texture4", texture4)
        setAccountData(playerAccount, "server.model4", model4)
        setAccountData(playerAccount, "server.texture5", texture5)
        setAccountData(playerAccount, "server.model5", model5)
        setAccountData(playerAccount, "server.texture6", texture6)
        setAccountData(playerAccount, "server.model6", model6)
        setAccountData(playerAccount, "server.texture7", texture7)
        setAccountData(playerAccount, "server.model7", model7)
        setAccountData(playerAccount, "server.texture8", texture8)
        setAccountData(playerAccount, "server.model8", model8)
        setAccountData(playerAccount, "server.texture9", texture9)
        setAccountData(playerAccount, "server.model9", model9)
        setAccountData(playerAccount, "server.texture10", texture10)
        setAccountData(playerAccount, "server.model10", model10)
        setAccountData(playerAccount, "server.texture11", texture11)
        setAccountData(playerAccount, "server.model11", model11)
        setAccountData(playerAccount, "server.texture12", texture12)
        setAccountData(playerAccount, "server.model12", model12)
        setAccountData(playerAccount, "server.texture13", texture13)
        setAccountData(playerAccount, "server.model13", model13)
        setAccountData(playerAccount, "server.texture14", texture14)
        setAccountData(playerAccount, "server.model14", model14)
        setAccountData(playerAccount, "server.texture15", texture15)
        setAccountData(playerAccount, "server.model15", model15)
        setAccountData(playerAccount, "server.texture16", texture16)
        setAccountData(playerAccount, "server.model16", model16)
        setAccountData(playerAccount, "server.texture17", texture17)
        setAccountData(playerAccount, "server.model17", model17)

        --Save Player Weapons
        setAccountData(playerAccount, "server.weaponslot0", playerWeaponSlot0) 
        setAccountData(playerAccount, "server.weaponslot1", playerWeaponSlot1) 
        setAccountData(playerAccount, "server.weaponslot2", playerWeaponSlot2) 
        setAccountData(playerAccount, "server.weaponslot3", playerWeaponSlot3) 
        setAccountData(playerAccount, "server.weaponslot4", playerWeaponSlot4) 
        setAccountData(playerAccount, "server.weaponslot5", playerWeaponSlot5) 
        setAccountData(playerAccount, "server.weaponslot6", playerWeaponSlot6) 
        setAccountData(playerAccount, "server.weaponslot7", playerWeaponSlot7) 
        setAccountData(playerAccount, "server.weaponslot8", playerWeaponSlot8) 
        setAccountData(playerAccount, "server.weaponslot9", playerWeaponSlot9) 
        setAccountData(playerAccount, "server.weaponslot10", playerWeaponSlot10) 
        setAccountData(playerAccount, "server.weaponslot11", playerWeaponSlot11) 
        setAccountData(playerAccount, "server.weaponslot12", playerWeaponSlot12) 

        --Save Player Weapon Ammo
        setAccountData(playerAccount, "server.weaponammo0", playerWeaponAmmo0)
        setAccountData(playerAccount, "server.weaponammo1", playerWeaponAmmo1)
        setAccountData(playerAccount, "server.weaponammo2", playerWeaponAmmo2)
        setAccountData(playerAccount, "server.weaponammo3", playerWeaponAmmo3)
        setAccountData(playerAccount, "server.weaponammo4", playerWeaponAmmo4)
        setAccountData(playerAccount, "server.weaponammo5", playerWeaponAmmo5)
        setAccountData(playerAccount, "server.weaponammo6", playerWeaponAmmo6)
        setAccountData(playerAccount, "server.weaponammo7", playerWeaponAmmo7)
        setAccountData(playerAccount, "server.weaponammo8", playerWeaponAmmo8)
        setAccountData(playerAccount, "server.weaponammo9", playerWeaponAmmo9)
        setAccountData(playerAccount, "server.weaponammo10", playerWeaponAmmo10)
        setAccountData(playerAccount, "server.weaponammo11", playerWeaponAmmo11)
        setAccountData(playerAccount, "server.weaponammo12", playerWeaponAmmo12)
        
    end
end
addEventHandler("onPlayerQuit", root, onPlayerQuit) 


