FROM openshift/wildfly-81-centos7:latest
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN mkdir /opt/jetty
RUN wget "$JETTY_URL" -O "$JETTY_TARBALL"
RUN tar zxvf "$JETTY_TARBALL"
RUN mv "$JETTY_DIR" /opt/jetty

WORKDIR /opt/jetty

EXPOSE 8080
ENTRYPOINT java -jar start.jar
