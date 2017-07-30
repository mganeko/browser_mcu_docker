#!/bin/sh
# sh run.sh roomname
#
docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/headless_mcu "https://meetin.biz/multi_mcu.html?auto=y&room=$1"
