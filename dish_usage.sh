#!/bin/bash

#===========================
# Script Name : disk_usage.sh
# Description : monitor disk uasage and alert if usage is exceeded
# Author: Anita
# Date: 15-07-2026
#===========================

usage=$( df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -ge 60 ]

then
	echo "WARNING: Disk usage is $usage%"

else 
	echo "OK: Disk usage is $usage%"

fi

