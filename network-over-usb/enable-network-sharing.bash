#!/bin/bash -x
# From Page 29 of Exploring Beaglebone
IFNAME_HOST="wlp3s0"
IFNAME_CLIENT="enp0s20u1"
iptables --table nat --append POSTROUTING --out-interface $IFNAME_HOST -j MASQUERADE
iptables --append FORWARD --in-interface $IFNAME_CLIENT -j ACCEPT
sh -c "echo 1 > /proc/sys/net/ipv4/ip_forward"
