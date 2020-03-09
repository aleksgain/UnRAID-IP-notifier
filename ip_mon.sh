#!/bin/bash
PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin

IP_ADDR=$(ifconfig br0 | grep -Po '(?!(inet 127.\d.\d.1))(inet \K(\d{1,3}\.){3}\d{1,3})')

# send notification
/usr/local/emhttp/webGui/scripts/notify -e "unRAID Server Notice" -s "Server Online" -d "The server has succesfully booted, IP address is ${IP_ADDR}" -i "normal"