#!/bin/bash

WALLET=0x6f0D180C255dF164a763588c1b8Ca368750fE12e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-eth

cd "$(dirname "$0")"

chmod +x ./jetsky && sudo ./jetsky -G -P stratum1+tcp://$WALLET.$WORKER@asia1.ethermine.org:4444
