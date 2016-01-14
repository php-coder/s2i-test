FROM java:8
MAINTAINER Slava Semushin <semushin@redhat.com>

RUN env && \
	pwd && \
	ls -l && \
	head secret1.file secret2.file secret3.file

