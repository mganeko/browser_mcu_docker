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

# ---- to pull ----
# docker pull docker pull mganeko/browser_mcu_docker

# ---- to run ----
# $docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/browser_mcu_docker yourroom

# ---- to build ---
# $git clone https://github.com/mganeko/browser_mcu_docker.git
# $docker build --no-cache=true -t mganeko/browser_mcu_docker -f Dockerfile .
　






