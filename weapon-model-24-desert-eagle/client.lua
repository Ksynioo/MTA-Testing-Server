--------------Desert Eagle---------------------

txd = engineLoadTXD("deagle.txd")
engineImportTXD(txd, 348)
dff = engineLoadDFF("deagle.dff", 348)
engineReplaceModel(dff, 348)
