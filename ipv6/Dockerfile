FROM alpine:3

RUN apk update && apk add --no-cache dhcp && touch /var/lib/dhcp/dhcpd.leases

EXPOSE 547/udp 547/tcp

ENTRYPOINT ["/usr/sbin/dhcpd"]
CMD ["-6", "-f", "-d", "--no-pid"]
