FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env && pwd && ls -l
RUN ls -l /
COPY secret*.file /tmp
RUN head /tmp/secret1.file /tmp/secret2.file /tmp/secret3.file

