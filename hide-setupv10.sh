#!/bin/bash
# Setup installer projext SSH + OpenVPN +Websocket + l2tp/IPsec
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


echo "installing insaller SSH + Open VPN  + Websocket"
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] in the process of installing tools"
echo -e "[ ${green}INFO${NC} ] dalam proses pemasangan alat"
sleep 1
wget https://raw.githubusercontent.com/hidessh99/projectku/main/simplessh.sh && chmod +x simplessh.sh && ./simplessh.sh
sleep 1


echo "installing insaller Slowdns "
echo "Progress..."
echo "Sedang berlangsung..."
wget https://raw.githubusercontent.com/hidessh99/projectku/main/Slowdns/hidessh-slowdns && chmod +x hidessh-slowdns && ./hidessh-slowdns
sleep 1

echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3



echo "installing insaller l2tp/IPsec"
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] in the process of installing tools"
echo -e "[ ${green}INFO${NC} ] dalam proses pemasangan alat"
sleep 1
wget https://raw.githubusercontent.com/hidessh99/projectku/main/ipsec/hidesetup-ipsec.sh && chmod +x hidesetup-ipsec.sh && ./hidesetup-ipsec.sh
sleep 1
echo "Download package tambahan untuk l2tp/ipsec"
wget -O /usr/local/bin/stdev-l2tp-get-psk "https://raw.githubusercontent.com/hidessh99/projectku/main/ipsec/stdev-l2tp-get-psk"
wget -O /usr/local/bin/stdev-l2tp-add-user "https://raw.githubusercontent.com/hidessh99/projectku/main/package-tambahan/stdev-l2tp-add-user"
wget -O /usr/local/bin/stdev-l2tp-remove-user "https://raw.githubusercontent.com/hidessh99/projectku/main/package-tambahan/stdev-l2tp-remove-user"

echo "permission file ipsec/l2tp"
chmod +x /usr/local/bin/stdev-l2tp-get-psk 
chmod +x /usr/local/bin/stdev-l2tp-add-user
chmod +x /usr/local/bin/stdev-l2tp-remove-user

sleep 1
echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3


echo "installing insaller wireguard"
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3
echo "silahkan dibaca, proses pemasangan semua script memakan waktu paling lama 10 menit sampai 30 menit"
echo "Jika masih dalam tahap instalasi..."
echo "jangan keluar dari terminal atau aplikasi"
echo -e "[ ${green}INFO${NC} ] in the process of installing tools"
echo -e "[ ${green}INFO${NC} ] dalam proses pemasangan alat"
sleep 1
wget https://raw.githubusercontent.com/hidessh99/projectku/main/wireguard/hidewp-setup.sh && chmod +x hidewp-setup.sh && ./hidewp-setup.sh
echo "Menajemen wireguard"
sleep 1
wget -O install-wireguard "https://www.dropbox.com/s/p89ubjpypmk26rv/install-wireguard?dl=1" && chmod +x install-wireguard && ./install-wireguard
sleep 1
cd
echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Sedang berlangsung..."
sleep 3





#SELESAI
cd
sleep 10
