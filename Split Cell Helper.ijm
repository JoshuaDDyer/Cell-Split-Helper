path = "E:/Combined Mitochondrial Distance Analyses/data/Split cells/"
filename = "2019-01-25 1.5hr Con 1-Scene-1"

roiManager("Select", 0);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + "cell 1")
selectWindow(filename + "cell 1" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + "cell 1" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + "cell 1")
close()
selectWindow("C2-" + filename + "cell 1" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + "cell 1")
close()

roiManager("Select", 1);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + "cell 2")
selectWindow(filename + "cell 2" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + "cell 2" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + "cell 2")
close()
selectWindow("C2-" + filename + "cell 2" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + "cell 2")
close()

roiManager("Select", 2);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + "cell 3")
selectWindow(filename + "cell 3" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + "cell 3" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + "cell 3")
close()
selectWindow("C2-" + filename + "cell 3" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + "cell 3")
close()

roiManager("Select", 3);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + "cell 4")
selectWindow(filename + "cell 4" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + "cell 4" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + "cell 4")
close()
selectWindow("C2-" + filename + "cell 4" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + "cell 4")
close()

roiManager("Select", 4);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + "cell 5")
selectWindow(filename + "cell 5" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + "cell 5" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + "cell 5")
close()
selectWindow("C2-" + filename + "cell 5" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + "cell 4")
close()