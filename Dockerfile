FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env && pwd && ls -l
COPY secret1.file /tmp
COPY secret2.file /tmp
COPY secret3.file /tmp
RUN head /tmp/secret1.file /tmp/secret2.file /tmp/secret3.file

