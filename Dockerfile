FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env
RUN head secret1.file secret2.file secret3.file

