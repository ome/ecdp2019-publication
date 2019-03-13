FROM openmicroscopy/omero-server:5.4

USER root
RUN yum -y install maven
ADD pom.xml 10-experimental.sh 99-run.sh /startup/
ADD wait-on-login import-all /tools/
RUN mkdir /import

USER omero-server
