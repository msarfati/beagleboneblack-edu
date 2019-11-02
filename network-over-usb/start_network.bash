#!/bin/bash -x
# Run on the BBB

/sbin/route add default gw 192.168.7.1
/usr/sbin/ntpdate -bsu ie.pool.ntp.org

