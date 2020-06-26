#!/bin/bash

# This script is used to validate application 
ipaddr=$(curl http://52.86.252.78/latest/meta-data/local-ipv4)
listencount=$(netstat -an | grep 80 | grep LISTEN | wc -l)
if [ "$listencount" -lt 1 ]; then
    exit 1
else
    exit 0
fi
