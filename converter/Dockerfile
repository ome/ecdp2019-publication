FROM openjdk:8

ENV VERSION 6.0.0
ENV URL https://downloads.openmicroscopy.org/bio-formats/$VERSION/artifacts/bftools.zip
RUN apt-get install wget && \
	wget $URL && \
	unzip bftools.zip -x '*.bat' -d /opt/

ENV BF_MAX_MEM 2g
ADD generate-samples.sh sample_sources.txt /opt/
ENTRYPOINT ["/opt/generate-samples.sh"]
