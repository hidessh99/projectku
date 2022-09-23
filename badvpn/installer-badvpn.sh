#!/bin/bash
# installer badvpn


cd
#system badvpn 7300
wget -O /etc/systemd/system/svr-7300.service https://raw.githubusercontent.com/hidessh99/projectku/main/badvpn/svr-7300.service && chmod +x  /etc/systemd/system/svr-7300.service

systemctl daemon-reload
systemctl start svr-7300.service
systemctl enable svr-7300.service
systemctl restart svr-7300.service
