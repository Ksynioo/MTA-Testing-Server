--------------Brassknuckle---------------------

txd = engineLoadTXD("brassknuckle.txd")
engineImportTXD(txd, 331)
dff = engineLoadDFF("brassknuckle.dff", 331)
engineReplaceModel(dff, 331)
