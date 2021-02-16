#!/bin/bash

WALLET=0x21f6c5cb2e1c8230126a302f675e3869319476dc
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-eth

cd "$(dirname "$0")"

chmod +x ./leumang && sudo ./leumang -G -P stratum1+tcp://$WALLET.$WORKER@asia1.ethermine.org:4444
