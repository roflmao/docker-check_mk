FROM progrium/busybox

MAINTAINER marko.celan@gmail.com

RUN /usr/bin/opkg-install procps bash curl xinetd

RUN /usr/bin/curl -k -L https://github.com/markocelan/docker-check_mk/raw/master/files/check-mk-agent_1.2.2p3-2_all.tgz | gunzip | tar -xpC /

ENTRYPOINT [ "/usr/sbin/xinetd", "-f", "/etc/xinetd.conf", "-dontfork", "-stayalive" ]
