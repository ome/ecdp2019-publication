FROM openjdk:8

ENV URL https://downloads.openmicroscopy.org/latest/bio-formats6/artifacts/bftools.zip
RUN apt-get install wget && \
	wget $URL && \
	unzip bftools.zip -x '*.bat' -d /opt/ \

ENV BF_MAX_MEM 2g
ENTRYPOINT ["/opt/bftools/bfconvert"]
