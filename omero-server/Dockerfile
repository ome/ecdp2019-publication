FROM openmicroscopy/omero-server:5.4

USER root
RUN yum -y install maven
ADD pom.xml 10-experimental.sh /startup/

USER omero-server
