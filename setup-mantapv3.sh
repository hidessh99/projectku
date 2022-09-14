#!/bin/bash
# Setup
# auto installer script created by SL
# skrip penginstal otomatis dibuat oleh SL
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'
#
mkdir /var/lib/crot;
mkdir /etc/xray;
mkdir /etc/slowdns;
echo "IP=" >> /var/lib/crot/ipvps.conf
domain=$(cat /root/domain)
sleep 1
mkdir -p /etc/xray
echo "installing all needed tools"
echo "menginstal semua alat yang dibutuhkan"
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] in the process of installing tools"
echo -e "[ ${green}INFO${NC} ] dalam proses pemasangan alat"
sleep 1
#wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/alat/alat.sh && chmod +x alat.sh && ./alat.sh
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] Downloading and Installing OpenSSH"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal OpenSSH"
echo -e "[ ${green}INFO${NC} ] Downloading and Installing Dropbear"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal Dropbear"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/ssh/ssh.sh && chmod +x ssh.sh && ./ssh.sh
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... SSH"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] Downloading and Installing SlowDNS"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal SlowDNS"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/slowdns/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... SLOWDNS"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] Downloading and Installing SSLH"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal SSLH"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/sslh/sslh.sh && chmod +x sslh.sh && ./sslh.sh
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... SSLH"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing Stunnel5"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal Stunnel5"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/stunnel5/stunnel5.sh && chmod +x stunnel5.sh && ./stunnel5.sh
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... STUNNEL5"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing SSH Websocket"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal SSH Websocket"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/websocket/websocket.sh && chmod +x websocket.sh && ./websocket.sh
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... SSH WEBSOCKET"
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing Certificate"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal Sertifikat"
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing Nginx"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal Nginx"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/nginx/nginx.sh && chmod +x nginx.sh && ./nginx.sh
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... NGINX"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "please read, the process of installing all scripts takes 10 minutes to 30 minutes"
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "If it's still in the installation stage..."
echo "do not exit terminal or application"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing XRAY"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal XRAY"
sleep 1
wget https://raw.githubusercontent.com/fisabiliyusri/coba/main/xray/xray.sh && chmod +x xray.sh && ./xray.sh
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... XRAY"
sleep 1
echo -e "[ ${green}INFO${NC} ] Downloading and Installing MENU"
echo -e "[ ${green}INFO${NC} ] Mengunduh dan Menginstal MENU"
sleep 1
sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... MENU"
sleep 1
#restart
sleep 1
echo -e "[ ${green}SERVICE${NC} ] Restart All service"
systemctl daemon-reload
sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart SSH OpenSSH Dropbear"
systemctl restart sshd
/etc/init.d/ssh restart
systemctl enable dropbear
systemctl restart dropbear
/etc/init.d/dropbear restart
sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart SSH SlowDNS"
systemctl restart sshd
pkill sldns-server
pkill sldns-client
systemctl stop client-sldns
systemctl stop server-sldns
systemctl enable client-sldns
systemctl enable server-sldns
systemctl start client-sldns
systemctl start server-sldns
systemctl restart client-sldns
systemctl restart server-sldns

sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart NGINX  "
systemctl enable nginx
systemctl restart nginx
/etc/init.d/nginx restart

sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart SSH Websocket,OpenVPN Websocket"
systemctl enable ws-nontls
systemctl restart ws-nontls
systemctl enable ws-tls
systemctl restart ws-tls
systemctl enable ws-ovpn
systemctl restart ws-ovpn

sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart SSLH "
systemctl enable sslh
systemctl restart sslh
/etc/init.d/sslh restart

sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart Stunnel "
systemctl enable stunnel5
systemctl restart stunnel5
/etc/init.d/stunnel5 restart

sleep 1
echo -e "[ ${green}SERVICE${NC} ]  Enable & restart xray "
systemctl enable xray
systemctl restart xray
systemctl restart nginx

# Status
#SELESAI
cd
echo " "
echo "Installation has been completed!!"echo " "
echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo -e "    SCRIPT MANTAP-XRAY Multi Port"  | tee -a log-install.txt
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - SSH OpenSSH                : 22,99,169"  | tee -a log-install.txt
echo "   - SSH Dropbear               : 109,143,300,1153,"  | tee -a log-install.txt
echo "   - SSH SlowDNS                : 5300,2269,3369"  | tee -a log-install.txt
echo "   - SSH Websocket HTTP         : 80"  | tee -a log-install.txt
echo "   - SSH Websocket SSL/TLS      : 443"  | tee -a log-install.txt
echo "   - SSH Direct/HTTP/SSL        : 8000"  | tee -a log-install.txt
echo "   - SSH Stunnel5               : 8000"  | tee -a log-install.txt
echo "   - SSLH                       : 8000"  | tee -a log-install.txt
echo "   - OpenVPN TCP/Websocket      : 80,443,8000"  | tee -a log-install.txt
echo "   - Nginx                      : 89,80,443"  | tee -a log-install.txt
echo "   - XRAYS TROJAN WS TLS        : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS WS TLS   : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS TROJAN GRPC          : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS GRPC     : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS GRPC           : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS GRPC           : 443"  | tee -a log-install.txt
echo "   - XRAYS TROJAN WS HTTP       : 80"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS WS HTTP  : 80"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS HTTP        : 80"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS HTTP        : 80"  | tee -a log-install.txt
echo "   - XRAYS TROJAN GRPC          : 80"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS GRPC     : 80"  | tee -a log-install.txt
echo "   - XRAYS VMESS GRPC           : 80"  | tee -a log-install.txt
echo "   - XRAYS VLESS GRPC           : 80"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo " Reboot 15 Sec"
cd
sleep 15
