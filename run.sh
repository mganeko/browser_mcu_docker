#!/bin/sh
# sh run.sh roomname
#
docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/browser_mcu_docker $1
