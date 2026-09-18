#!/bin/sh

base_ip=$(hostname -i)

start_last_octet=${START_LAST_OCTET:-20}
end_last_octet=${END_LAST_OCTET:-30}
lease_time=${LEASE_TIME:-1h}

range_start=$(echo "$base_ip" | sed -r -e "s/\\.[0-9]+\$/.$start_last_octet/g")
range_end=$(echo "$base_ip" | sed -r -e "s/\\.[0-9]+\$/.$end_last_octet/g")
dhcp_range="$range_start,$range_end,$lease_time"

echo "DHCP Range: $dhcp_range"


exec dnsmasq --dhcp-range "$dhcp_range" -d "$@"
