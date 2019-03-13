path = "E:/Combined Mitochondrial Distance Analyses/data/Split cells/"
filename = "2019-01-25 1.5hr Con 1-Scene-1"
cell = "-Cell 1"
run("Duplicate...", "title=[cell] duplicate")
selectWindow("cell")
saveAs("Tiff", path + filename + cell)
selectWindow(filename + cell + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + cell + ".tif")
saveAs("Tiff", path + "Red" + filename + cell)
selectWindow("C2-" + filename + cell + ".tif")
saveAs("Tiff", path + "Blue" + filename + cell)