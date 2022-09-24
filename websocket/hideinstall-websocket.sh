#!/bin/bash
#date january 2022
# created bye hidessh.com
#instalasi Websocket

# Websocket OpenSSH
#port 88 (OpenSSH) to 2082 (HTTP Websocket)
cd
wget -O /usr/local/bin/edu-proxy https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/http.py && chmod +x /usr/local/bin/edu-proxy
wget -O /etc/systemd/system/edu-proxy.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/http.service && chmod +x /etc/systemd/system/edu-proxy.service
systemctl daemon-reload.service
systemctl enable edu-proxy.service
systemctl restart edu-proxy.service
clear

# Dropbear WebSocket
#port 69 ( Dropbear) to 8880 (HTTPS Websocket)
cd
wget -O /usr/local/bin/ws-dropbear https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/https.py && chmod +x /usr/local/bin/ws-dropbear
wget -O /etc/systemd/system/ws-dropbear.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/https.service && chmod +x /etc/systemd/system/ws-dropbear.service
#reboot service
systemctl daemon-reload
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service
clear

# OpenVPN WebSocket
#port 1194 ( Dropbear) to 2086 (HTTP Websocket)
wget -O /usr/local/bin/edu-proxyovpn https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/ovpn.py && chmod +x /usr/local/bin/edu-proxyovpn
wget -O /etc/systemd/system/edu-proxyovpn.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/ovpn.service && chmod +x /etc/systemd/system/edu-proxyovpn.service
#reboot service
systemctl daemon-reload
systemctl enable edu-proxyovpn.service
systemctl start edu-proxyovpn.service
systemctl restart edu-proxyovpn.service
clear


# SSL/TLS WebSocket
#port 1194 ( Dropbear) to 2086 (HTTP Websocket)
wget -O /usr/local/bin/edu-tls https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/ws-tls.py && chmod +x /usr/local/bin/edu-tls
wget -O /etc/systemd/system/edu-tls.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/ws-tls.service && chmod +x /etc/systemd/system/edu-tls.service
#reboot service
systemctl daemon-reload
systemctl enable edu-tls
systemctl start edu-tls
systemctl restart edu-tls
clear

cd
wget -O /usr/local/bin/ws-tls https://raw.githubusercontent.com/hidessh99/projectku/main/websocket/ws-tls && chmod +x /usr/local/bin/ws-tls
wget -O /etc/systemd/system/ws-tls.service https://raw.githubusercontent.com/hidessh99/projectku/main/websocket/ws-tls.service && chmod +x  /etc/systemd/system/ws-tls.service

systemctl daemon-reload
systemctl enable ws-tls
systemctl restart ws-tls
