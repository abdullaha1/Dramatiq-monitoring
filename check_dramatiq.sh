#!/bin/bash

response=$(curl --connect-timeout 5 --max-time 5 --silent localhost:9191)

if [ -z "$response" ]
then
systemctl restart dramatiq-hi // systemd file 
systemctl restart dramatiq-lo //systemd file
else
echo "Dramatiq workers are working"
fi

