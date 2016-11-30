FROM ubuntu:16.04

MAINTAINER rolf@jottacloud.com

RUN apt-get update && apt-get install -y xinetd python curl gzip

COPY etc /etc/
COPY usr /usr/


ENTRYPOINT [ "/usr/sbin/xinetd", "-f", "/etc/xinetd.conf", "-dontfork", "-stayalive" ]
