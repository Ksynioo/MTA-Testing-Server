function mod()
    txd = engineLoadTXD("BMW_X7.txd")
    engineImportTXD(txd, 400)
    dff = engineLoadDFF("BMW_X7.dff", 400)
    engineReplaceModel(dff, 400)    
  end 
  addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), mod) 