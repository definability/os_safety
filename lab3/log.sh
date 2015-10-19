#!/bin/bash

# rsyslog settings: /etc/rsyslog.d/50-default.conf

python logger.py "Hello from Python!" 7

logger "Hello from logger!"

echo "Here you are some log"
tail /var/log/syslog

