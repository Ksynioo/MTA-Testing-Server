function mod()
    --txd = engineLoadTXD("wheel-textures.txd")
    --engineImportTXD(txd, 400)

    dff = engineLoadDFF("ID_1025.dff", 1025)
    engineReplaceModel(dff, 1025) 
    
    dff = engineLoadDFF("ID_1073.dff", 1073)
    engineReplaceModel(dff, 1073) 
    
    dff = engineLoadDFF("ID_1074.dff", 1074)
    engineReplaceModel(dff, 1074) 
    
    dff = engineLoadDFF("ID_1075.dff", 1075)
    engineReplaceModel(dff, 1075) 
    
    dff = engineLoadDFF("ID_1076.dff", 1076)
    engineReplaceModel(dff, 1076) 
    
    dff = engineLoadDFF("ID_1077.dff", 1077)
    engineReplaceModel(dff, 400) 
    
    dff = engineLoadDFF("ID_1078.dff", 1078)
    engineReplaceModel(dff, 1078) 
    
    dff = engineLoadDFF("ID_1079.dff", 1079)
    engineReplaceModel(dff, 1079) 
    
    dff = engineLoadDFF("ID_1080.dff", 1080)
    engineReplaceModel(dff, 1080) 
    
    dff = engineLoadDFF("ID_1081.dff", 1081)
    engineReplaceModel(dff, 1081) 
    
    dff = engineLoadDFF("ID_1082.dff", 1082)
    engineReplaceModel(dff, 1082) 
    
    dff = engineLoadDFF("ID_1083.dff", 1083)
    engineReplaceModel(dff, 1083) 
    
    dff = engineLoadDFF("ID_1084.dff", 1084)
    engineReplaceModel(dff, 1084) 
    
    dff = engineLoadDFF("ID_1085.dff", 1085)
    engineReplaceModel(dff, 1085) 
    
    dff = engineLoadDFF("ID_1096.dff", 1096)
    engineReplaceModel(dff, 1096) 
    
    dff = engineLoadDFF("ID_1097.dff", 1097)
    engineReplaceModel(dff, 1097) 
    
    dff = engineLoadDFF("ID_1098.dff", 1098)
    engineReplaceModel(dff, 1098) 
    
  end 
  addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), mod) 