#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
clear
apt install jq -y
DOMAIN=hidesvr.xyz
#read -rp "Masukkan Domain: " -e DOMAIN
#echo ""
#echo "Domain: ${DOMAIN}" 
#echo ""
read -rp "Masukkan Subdomain: " -e sub
SUB_DOMAIN=${sub}.${DOMAIN}
CF_ID=admin@hidessh.com
CF_KEY=e9c10a9d66f7c61b79c2a83fcc45669c32a17
set -euo pipefail
IP=$(wget -qO- ipinfo.io/ip);
echo "Pointing DNS Untuk Domain ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

if [[ "${#RECORD}" -le 10 ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi

RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')
echo "Host : $SUB_DOMAIN"


cd /var/lib/
mkdir premium-script
echo "IP=$SUB_DOMAIN" >> /var/lib/premium-script/ipvps.conf
cd

cd /etc/
mkdir xray
echo $SUB_DOMAIN > /etc/xray/domain

cd
cd /etc/
mkdir v2ray
echo $SUB_DOMAIN > /etc/v2ray/domain

cd
mkdir domain
echo $SUB_DOMAIN > /root/domain


cd
clear
