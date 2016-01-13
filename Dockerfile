FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env
RUN pwd
RUN ls -l
RUN head secret1/secret1.file secret2/secret2.file secret2/secret3.file

