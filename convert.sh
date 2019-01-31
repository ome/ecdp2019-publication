mkdir -p /out/sub-resolutions
rm -rf /out/sub-resolutions/*

# Brightfield WSI
mkdir -p /out/sub-resolutions/Brightfield/Leica-1
./tools/bfconvert -noflat -compression LZW /in/leica-scn/public/openslide/Leica-1/Leica-1.scn /out/sub-resolutions/Brightfield/Leica-1/Leica-1.ome.tiff
mkdir -p /out/sub-resolutions/Brightfield/Leica-2
./tools/bfconvert -noflat -compression LZW /in/leica-scn/public/openslide/Leica-2/Leica-2.scn /out/sub-resolutions/Brightfield/Leica-2/Leica-2.ome.tiff

# Fluorescence WSI
mkdir /out/sub-resolutions/Fluorescence
./tools/bfconvert -noflat -compression LZW /in/vectra-qptiff/public/perkinelmer/PKI_scans/LuCa-7color_Scan1.qptiff /out/sub-resolutions/Fluorescence/LuCa-7color_Scan1.ome.tiff

# Z-stack
mkdir /out/sub-resolutions/Z-stack
./tools/bfconvert -noflat -compression LZW /in/imaris/public/eliana/retina_large.ims /out/sub-resolutions/Z-Stack/retina_large.ome.tiff

# Large EM 
mkdir /out/sub-resolutions/EM
./tools/bfconvert -noflat -compression LZW /in/gatan/public/EMPIAR/EMPIAR-10013/BGal_000438_frames.dm4 /out/sub-resolutions/EM/BGal_000438_frames.ome.tiff
