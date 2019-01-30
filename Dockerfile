FROM openmicroscopy/bioformats:east

COPY convert.sh /tmp/convert.sh
WORKDIR /bio-formats-build/bioformats/
CMD ["/tmpconvert.sh"]