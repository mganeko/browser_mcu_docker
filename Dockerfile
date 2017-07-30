# Browser MCU docker
#   headless browser MCU on container

FROM justinribeiro/chrome-headless

# Run Chrome non-privileged
USER chrome

# Expose port 9222
EXPOSE 9222

# Autorun chrome headless with no GPU
# ENTRYPOINT [ "google-chrome-stable" ]
#CMD [ "--headless", "--disable-gpu", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=9222", "https://meetin.biz/multi_mcu.html?room=ggg&auto=y" ]

# Autorun chrome headless with no GPU and with debug-port
#ENTRYPOINT [ "google-chrome-stable", "--headless", "--disable-gpu", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=9222"]
#CMD [ "https://webrtc.org" ]

# Autorun chrome headless with no GPU and witout debug-port
ENTRYPOINT [ "google-chrome-stable", "--headless", "--disable-gpu"] 
CMD [  "https://webrtc.org" ]

# -- to use other URL, type as -- 
# $docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/headless_mcu:latest "https://yourserver/yourpage.html?a=v1&b=v2" 
#

# ---- to pull ----
# docker pull docker pull mganeko/headless_mcu

# ---- to run ----
# $docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/headless_mcu "https://meetin.biz/multi_mcu.html?auto=y&room=your-room-name" 

# ---- to build ---
# $git clone https://github.com/mganeko/browser_mcu_docker.git
# $docker build -t mganeko/headless_mcu .　






