FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env && id && pwd
RUN mkdir $HOME/jetty
RUN wget "$JETTY_URL" -O "$JETTY_TARBALL"
RUN tar zxvf "$JETTY_TARBALL"
RUN mv "$JETTY_DIR" $HOME/jetty

WORKDIR $HOME/jetty

EXPOSE 8080
ENTRYPOINT java -jar start.jar
