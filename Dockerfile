FROM openmicroscopy/bioformats:east

COPY --chown=bf:bf convert.sh /tmp/convert.sh
RUN chmod +x /tmp/convert.sh
WORKDIR /bio-formats-build/bioformats/
ENV BF_MAX_MEM 2g
ENTRYPOINT ["bash", "-c", "/tmp/convert.sh"]