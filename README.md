Script used for generating the official OME-TIFF samples from a collection of files

    $ docker build -t pyramid_generation .
    $ docker run --rm -v /uod/idr/repos/curated:/in -v /uod/idr-scratch/ome-tiff/:/out pyramid_generation