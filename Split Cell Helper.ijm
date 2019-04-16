//path to save to
path = "E:/Combined Mitochondrial Distance Analyses/data/Split cells/"
//filename
filename = getInfo("image.filename")

//delete everything that is not selected in the ROI
array1 = newArray("0");
for (i=1;i<roiManager("count");i++){ 
        array1 = Array.concat(array1,i); 
        }

roiManager("Select", array1);
roiManager("Combine");
roiManager("Add");

array2 = newArray("0");
for (i=1;i<roiManager("count");i++){ 
        array2 = Array.concat(array1,i);
        }
lastArr = array2[array2.length - 1];

roiManager("Select", lastArr);
run("Clear Outside", "stack");
roiManager("Select", lastArr);
roiManager("Delete");

//Save 1st ROI, split channels then save each channel
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
//Save 2nd ROI, split channels then save each channel
roiManager("Select", 1);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + " cell 2")
selectWindow(filename + " cell 2" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + " cell 2" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + " cell 2")
close()
selectWindow("C2-" + filename + " cell 2" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + " cell 2")
close()
//Save 3rd ROI, split channels then save each channel
roiManager("Select", 2);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + " cell 3")
selectWindow(filename + " cell 3" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + " cell 3" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + " cell 3")
close()
selectWindow("C2-" + filename + " cell 3" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + " cell 3")
close()
//Save 4th ROI, split channels then save each channel
roiManager("Select", 3);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + " cell 4")
selectWindow(filename + " cell 4" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + " cell 4" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + " cell 4")
close()
selectWindow("C2-" + filename + " cell 4" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + " cell 4")
close()
//Save 5th ROI, split channels then save each channel
roiManager("Select", 4);
run("Duplicate...", "title=[cell] duplicate")
saveAs("Tiff", path + filename + " cell 5")
selectWindow(filename + " cell 5" + ".tif")
run("Split Channels")
selectWindow("C1-" + filename + " cell 5" + ".tif")
saveAs("Tiff", path + "Bacteria" + " " + filename + " cell 5")
close()
selectWindow("C2-" + filename + " cell 5" + ".tif")
saveAs("Tiff", path + "Mitochondria" + " " + filename + " cell 5")
close()