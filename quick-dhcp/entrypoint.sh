#!/bin/sh

echo "DHCP Range: $DHCP_RANGE"

exec dnsmasq --dhcp-range "$DHCP_RANGE" -d "$@"
