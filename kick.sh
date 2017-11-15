#!/bin/sh
# sh kick.sh roomname
#

# -- for linux --
# - for Chrome 60
# google-chrome-stable --headless --disable-gpu --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"

# - for Chrome 61
google-chrome-stable --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"


# -- for Mac --
# - for Chrome 60
#"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"

# - for Chrome 61
#"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 "https://meetin.biz/multi_mcu.html?auto=y&room=$1"
