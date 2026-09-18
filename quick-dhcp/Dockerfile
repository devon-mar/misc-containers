FROM alpine:3.24

RUN apk add --no-cache dnsmasq


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
