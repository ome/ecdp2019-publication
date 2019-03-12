# Bringing Open Data to Whole Slide Imaging

This repository contains all supported material for the technical paper
submitted for the 15th European Congress on Digital Pathology (ECDP).

## OME-TIFF specification

The complete OME-TIFF specification is available 
[here](https://docs.openmicroscopy.org/ome-model/6.0.0/ome-tiff/data.html#sub-resolutions).
In particular, the 
[sub-resolutions](https://docs.openmicroscopy.org/ome-model/6.0.0/ome-tiff/data.html#sub-resolutions)
section specifies the way to store pyramidal levels using the
[SubIFDs](https://www.awaresystems.be/imaging/tiff/tifftags/subifds.html)
extension tag of the [TIFF](https://www.adobe.io/open/standards/TIFF.html)
specification.

## Data generation

This repository contains all the supporting material associated

Script used for generating the official OME-TIFF samples from a collection of files

    $ docker build -t pyramid_generation .
    $ docker run --rm -v /uod/idr/repos/curated:/in -v /uod/idr-scratch/ome-tiff/:/out pyramid_generation

## Data Management

[QuPath](https://github.com/qupath/qupath)

## WSI Analysis

[QuPath](https://qupath.github.io)
