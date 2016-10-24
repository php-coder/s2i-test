FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>
ARG JETTY_PORT=8080

RUN env && id && pwd
RUN mkdir /opt/jetty
RUN wget "$JETTY_URL" -O "$JETTY_TARBALL"
RUN tar zxvf "$JETTY_TARBALL"
RUN mv "$JETTY_DIR" /opt/jetty

WORKDIR /opt/jetty

EXPOSE 9090 $JETTY_PORT
ENTRYPOINT java -jar start.jar
