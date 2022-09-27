<h2 align="center">
Auto Script Install All VPN Service

#info for you
   slow dns membuat openvpn eror but wireguard working and lt2p working
   
   
   
   
### Info:
Buat VPS Fresh atau VPS Baru dan Wajib Menggunakan User: root
* Login VPS User menggunakan user root
* Cara langsung masuk ke akses root
```html
sudo su
```
Atau
```html
sudo -i
```
atau
```html
su
```

### Link Video Tutorial Cara Install
```html
https://www.facebook.com/100031931503057/posts/628374871570224/?app=fbl
```

## INFO TAMBAHAN , SILAHKAN DI BACA 
* MINIMAL RAM 2 GB UNTUK MENGGUNAKAN SCRIPT INI
* SILAHKAN HAPUS PROXY SQUID JIKA VPS TERASA BERAT

## Installation 
## 1.
Part 1: Update dan Upgrade
   <img src="https://img.shields.io/badge/Update%20Upgrade-green"> 
  ```html
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot
```
  
## 2.0
script installer SSH + OpenVPN + Slowdns 443
  ```html
wget https://raw.githubusercontent.com/hidessh99/projectku/main/simplessh.sh && chmod +x simplessh.sh && ./simplessh.sh

```

# 2.
Part 2: Buat Akses Root Di VPS /Root VPS
  <img src="https://img.shields.io/badge/Akses_Root%20VPS-green">
Untuk Mengizinkan Root Dan Ubah Password Login di VPS Google Cloud Platform, Aws, Dan Lain-lain
   ```html
  wget -qO- -O vpsroot.sh https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/vpsroot.sh && bash vpsroot.sh
  ```
  
# 2.5
Di sini wajib pake user root atau bisa aktifkan root sementara
   ```html
sudo su
cd
cd

  ```
### 3.
Part 3: Install Semua Layanan VPN /Install All VPN Service
  <img src="https://img.shields.io/badge/Install_Semua_Layanan_VPN%20Batch-green">
  ```html
rm -f setup.sh && apt update && apt upgrade -y && update-grub && sleep 2 && apt-get update -y && apt-get upgrade && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```

### 4. DONE / SELESAI
* • jika tidak bisa login di vps ,gunakan port ssh
* • 22, 2253


### 5. MENU, INFO ,UPDATE ,FIX
* untuk menampilkan menu
```html
menu
```
* untuk update menu dan update info
```html
updatemenu
```
* otomatis untuk memperbaiki error SSLH, WS-TLS
```html
sl-fix
```
```html
reboot
```
*
* otomatis untuk memperbaiki error Sertifikat SSL/TLS dan SUBDOMAIN
* perbaiki error di bagian acme domain
```html
slhost
```
* untuk update Sertifikat SSL/TLS
```html
certv2ray
```
```html
restart
```
*
*
*

### 6. FIX ERROR SSLH WS
# Auto Fix Error SSLH + WS-TLS 443
* 1 • Jika terjadi error di SSLH dan SSH WS-TLS nya,gunakan script ini untuk memperbaiki nya
```html
menu
 ```

* 2 • di menu lalu pilih 17 (SL-FIX Menu)
```html
17
 ```

* 3 • jika sudah selesai lalu reboot/ hidupkan ulang vps nya
```html
reboot
 ```


*
*
*
### 69.
# Fix gRPC untuk FB Lite,Sosmed,etc..
* Pengaturan DNS
* Remote DNS:
```html
dns.google
```

*
*
*
### 99.

# (Fix Manual) Fix Stunnel5 Error
* buat domain baru(bash slhost.sh)
```html
cd /usr/bin && wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/ssh/slhost.sh && bash slhost.sh
 ```

* edit manual ip domain
```html
nano /var/lib/crot/ipvps.conf
 ```
```html
IP=masukan host subdomain kamu
 ```

* edit manual domain
```html
nano /etc/xray/domain
 ```
```html
isi dengan host subdomain kamu
 ```

* lalu update cert
```html
wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/xray/certv2ray.sh && chmod +x certv2ray.sh && bash certv2ray.sh
 ```
* atau
```html
certv2ray
 ```

### 100 (Fix manual) Fix Error SSLH & Fix Error SSH WS-TLS

* Perbaiki sslh yang error di vps yang tidak support sslh
* khusus yang vps nya tidak support sslh
* matikan ws-tls
```html
systemctl stop ws-tls
```
* buat user sslh / edit passwd
```html
echo sslh:x:109:114::/nonexistent:/usr/sbin/nologin >> /etc/passwd
```
* note: edit passwd dan pindah sslh nya di atas vnstat

* start sslh dan jalankan
```html
systemctl start sslh 
&& 
/etc/init.d/sslh start 
&& 
/etc/init.d/sslh restart 
```
* lalu start ws-tls
```html
systemctl start ws-tls
```
```html
reboot
```
*done

# perintah
```html
wget = download
cp = copy/salin
nano = edit
rm = hapus
rm -r = hapus
rm -f = hapus
rm -rf = hapus
git clone = digunakan untuk mengunduh code yang ada pada repository
 ```

# (hapus) uninstall script websocket
```html
rm -r /etc/systemd/system/ws-nontls.service 
&& 
rm -r /etc/systemd/system/ws-tls.service 
&& 
rm -r /usr/local/bin/ws-nontls 
&& 
rm -r /usr/local/bin/ws-tls 
&&
rm -r /etc/systemd/system/ws-ovpn.service 
&& 
rm -r /usr/local/bin/ws-ovpn 
 ```
# (hapus) uninstall ssl && stunnel
```html

rm -f /etc/default/sslh
rm -r -f stunnel
rm -f stunnel5.zip
rm -f /etc/stunnel5/stunnel5.conf
rm -r -f /usr/local/share/doc/stunnel/
rm -r -f /usr/local/etc/stunnel/
rm -f /usr/local/bin/stunnel
rm -f /usr/local/bin/stunnel3
rm -f /usr/local/bin/stunnel4
rm -f /usr/local/bin/stunnel5
```
# (hapus) uninstall all sslh && all stunnel
```html
sudo apt-get remove stunnel4
&&
sudo apt-get remove stunnel5
&&
sudo apt-get remove --auto-remove stunnel4
&&
sudo apt-get remove --auto-remove stunnel5
&&
sudo apt-get purge stunnel4
&&
sudo apt-get purge stunnel5
&&
sudo apt-get purge --auto-remove stunnel4
&&
sudo apt-get purge --auto-remove stunnel5
&&

sudo apt remove sslh
&&
sudo apt-get remove --auto-remove sslh
&&
sudo apt-get purge sslh
&&
sudo apt-get purge --auto-remove sslh
&&
sudo apt autoclean && sudo apt autoremove
&& 
```




### Fitur Script

• CEK SEMUA IP DAN PORT (Service ALL VPN)

• SSH & OpenVPN

• SSH Websocket (Cloudflare)

• OpenVPN Websocket (Cloudflare)

• SSLH

• SSH CloudFront Websocket (Aws CloudFront Only) [OFF]

• SLOWDNS Over SSH [OFF]

• OHP SSH & OHP Dropbear & OHP OpenVPN (OPEN HTTP PUNCHER)

• XRAY VMESS 

• XRAY VLESS

• XRAY TROJAN

• XRAY VMESS GRPC

• XRAY VLESS GRPC

• SHADOWSOCKS

• SSR

• PPTP VPN

• L2TP VPN

• SSTP VPN

• WIREGUARD

• TROJAN GO

• Backup Data ALL Service

• Restore Data ALL Service

• Auto Fix

• Auto Update

### Os Supported

• Debian 10 & 9

• Ubuntu 18.04 & 20.04

# Service & Port

• OpenSSH                 : 22, 2253

• Dropbear                : 443, 109, 143, 1153

• Stunnel5                : 443, 445, 777

• OpenVPN                 : TCP 1194, UDP 2200, SSL 990

• Websocket SSH TLS       : 443

• Websocket SSH HTTP      : 8880

• Websocket OpenVPN       : 2086

• Squid Proxy             : 3128, 8080

• Badvpn                  : 7100, 7200, 7300

• Nginx                   : 89

• Wireguard               : 7070

• L2TP/IPSEC VPN          : 1701

• PPTP VPN                : 1732

• SSTP VPN                : 444

• Shadowsocks-R           : 1443-1543

• SS-OBFS TLS             : 2443-2543

• SS-OBFS HTTP            : 3443-3543

• XRAYS Vmess TLS         : 8443

• XRAYS Vmess None TLS    : 80

• XRAYS Vless TLS         : 8443

• XRAYS Vless None TLS    : 80

• XRAYS Trojan            : 2083

• XRAYS Vmess GRPC TLS    : 1180,3380

• XRAYS Vless GRPC TLS    : 2280,4480

• OHP SSH                 : 8181

• OHP Dropbear            : 8282

• OHP OpenVPN             : 8383

• Trojan Go               : 2087

• CloudFront Websocket    : [OFF]

• SLOWDNS OPENSSH         : (2253)[OFF]

• SLOWDNS DROPBEAR        : (1153)[OFF]

• SLOWDNS SSL/TLS         : (3353)[OFF]



 ### Server Information & Other Features

• Timezone                : Asia/Jakarta (GMT +7)

• Fail2Ban                : [ON]

• Dflate                  : [ON]

• IPtables                : [ON]

• Auto-Reboot             : [ON]

• IPv6                    : [OFF]

• Autoreboot On 05.00 GMT +7

• Autoreboot On 00.00 GMT +7

• Autoreboot On 12.00 GMT +7

• Autoreboot On 18.00 GMT +7

• Auto Delete Expired Account

• Full Orders For Various Services

• White Label

• Auto Fix

• Auto Update


