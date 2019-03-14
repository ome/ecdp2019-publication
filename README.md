# Bringing Open Data to Whole Slide Imaging

[![Build Status](https://travis-ci.org/ome/ecdp2019-publication.svg)](https://travis-ci.org/ome/ecdp2019-publication)
[![DOI](https://zenodo.org/badge/174513696.svg)](https://zenodo.org/badge/latestdoi/174513696)

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


-   build the Docker image

        $ docker build -t converter converter

-   download the source images used for testing

        $ wget -i pff_list.txt -P source/

-   generate pyramidal OME-TIFF using the Docker image

        $ docker run --rm -v source/:/in -v data/:/out converter

## Data Management

[OMERO](https://www.openmicroscopy.org/omero)

This

-   first, either generate OME-TIFF files as described in the previous section
    or download the official OME-TIFF sub-resolution samples

        $ wget -i ometiff_list.txt -P data/

-   a full OMERO application (OMERO 5.4, Bio-Formats 6.0.0, OMERO.iviewer) can
    be deployed using [Docker compose](https://docs.docker.com/compose/) :
    
        $ docker-compose up

-   Go to http://localhost:4080/webclient and log in using the user `root` and
    the password `omero`.

## WSI Analysis

[QuPath](https://qupath.github.io)

-   first, either generate OME-TIFF files as described in the previous section
    or download the official OME-TIFF sub-resolution samples