//path to save to
path = "E:/Combined Mitochondrial Distance Analyses/data/Split cells/"
//filename
filename = getInfo("image.filename")

//delete everything that is not selected in the ROI

roiManager("Select", 0);
run("Clear Outside", "stack");


//Save each ROI, split channels then save each channel
roiManager("Select", 0);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + " cell 1")
selectWindow(filename + " cell 1" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + " cell 1" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + " cell 1")
close()
selectWindow("C2-" + filename + " cell 1" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + " cell 1")
close()
