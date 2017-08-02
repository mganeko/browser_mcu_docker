# Browser MCU docker
#   headless browser MCU on container

FROM justinribeiro/chrome-headless

# RUN while build
RUN mkdir /tmp/work
COPY kick.sh /tmp/work/


# Run Chrome non-privileged
USER chrome

# Expose port 9222
EXPOSE 9222


# Autorun chrome headless with no GPU
# ENTRYPOINT [ "google-chrome-stable" ]
#CMD [ "--headless", "--disable-gpu", "--remote-debugging-address=0.0.0.0", "--remote-debugging-port=9222", "https://meetin.biz/multi_mcu.html?room=ggg&auto=y" ]

# Autorun chrome headless with no GPU and with debug-port
ENTRYPOINT [ "sh", "/tmp/work/kick.sh"]
CMD [ "demoroom" ]

# --- NG --
# Autorun chrome headless with no GPU and witout debug-port .. BUT DO NOT WORK
#ENTRYPOINT [ "google-chrome-stable", "--headless", "--disable-gpu"] 
#CMD [  "https://webrtc.org" ]
# --- NG --

# -- to use other URL, type as -- 
# $docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/headless_mcu:kick yourroom 
#

# ---- to pull ----
# docker pull docker pull mganeko/headless_mcu

# ---- to run ----
# $docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/headless_mcu "https://meetin.biz/multi_mcu.html?auto=y&room=your-room-name" 

# ---- to build ---
# $git clone https://github.com/mganeko/browser_mcu_docker.git
# $docker build --no-cache=true -t mganeko/headless_mcu:kick -f Dockerfile .
　






