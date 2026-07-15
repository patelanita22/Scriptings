#!/bin/bash

#===========================
# Script Name : service_monitoring.sh
# Description : check service status (running or not)
# Author: Anita
# Date: 15-07-2026
#===========================

Service="nginx"

if systemctl is-active --q $Service

then
	echo "$Service is Running"

else
	echo "$Service is Stopped"

fi

