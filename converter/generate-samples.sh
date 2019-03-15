#! /bin/bash
# Script used to generate the official OME-TIFF sub-resolutions samples
# available at 
# https://downloads.openmicroscopy.org/images/OME-TIFF/2016-06/sub-resolutions/

# Download original source files
wget -i $(dirname "$0")/sample_sources.txt

# Brightfield WSI
/opt/bftools/bfconvert -no-upgrade -noflat -compression JPEG Leica-1.scn /out/Leica-1.ome.tiff
/opt/bftools/bfconvert -no-upgrade -noflat -compression JPEG Leica-2.scn Leica-2.ome.tiff

# Fluorescence WSI
/opt/bftools/bfconvert -no-upgrade -noflat -compression LZW LuCa-7color_Scan1.qptiff /out/LuCa-7color_Scan1.ome.tiff

# Z-stack
/opt/bftools/bfconvert -no-upgrade -noflat -compression zlib retina_large.ims /out/retina_large.ome.tiff

# Large EM 
/opt/bftools/bfconvert -no-upgrade -noflat -compression zlib -pyramid-resolutions 5 -pyramid-scale 2 -tilex 1024 -tiley 1024 BGal_000438_frames.dm4 /out/BGal_000438_frames.ome.tiff
