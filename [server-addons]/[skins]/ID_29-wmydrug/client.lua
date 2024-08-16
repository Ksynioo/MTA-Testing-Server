function mod()
    txd = engineLoadTXD("29.txd")
    engineImportTXD(txd, 29)
    dff = engineLoadDFF("29.dff", 29)
    engineReplaceModel(dff, 29)    
  end 
  addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), mod) 