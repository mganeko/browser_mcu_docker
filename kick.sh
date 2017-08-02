#!/bin/sh
# sh kick.sh roomname
#
# for linux
google-chrome-stable --headless --disable-gpu --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"

# for Mac
#"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"

