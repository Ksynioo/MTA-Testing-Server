function mod()
    txd = engineLoadTXD("bmw_x7.txd")
    engineImportTXD(txd, 400)
    dff = engineLoadDFF("bmw_x7.dff", 400)
    engineReplaceModel(dff, 400)    
  end 
  addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), mod) 