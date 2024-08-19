function mod()
    txd = engineLoadTXD("bentley_brooklands.txd")
    engineImportTXD(txd, 401)
    dff = engineLoadDFF("bentley_brooklands.dff", 401)
    engineReplaceModel(dff, 401)    
  end 
  addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), mod) 