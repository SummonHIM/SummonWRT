# Packages list
## x86_64 Target Images
- (3) Seconds to wait before booting the default entry
- (SummonWrt) Title for the menu entry in GRUB
- Build LiveCD image (ISO)
- Build VirtualBox image files (VDI)
- Build VMware image files (VMDK)
- (1024) Root filesystem partition size (in MB)

## RK3328 Target Images
- tar.gz
- (1024) Root filesystem partition size (in MB)

## Base system
- block-mount
- (-) dnsmasq

## Administration
- sudo

## Extra packages
- nginx
- nginx-mod-luci-ssl
- nginx-util

## Fonts
### DejaVu
- dejavu-fonts-ttf-DejaVuSansMono & Blod & BlodOblique & Oblique

## Kernel modules
### Native Language Support
- kmod-nls-cp932 (Japanese)
- kmod-nls-cp936 (SChinese)
- kmod-nls-cp950 (TChinese)

### USB Support
--- Smartphone USB network sharing ---
- kmod-usb-net-rndis
- kmod-usb-net-cdc-ncm
- kmod-usb-net-huawei-cdc-ncm
- kmod-usb-net-cdc-eem
- kmod-usb-net-cdc-subset
- kmod-usb2
- kmod-usb3

--- EOL Smartphone USB network sharing ---

## Libraries
### libcurl
- Selected SSL library (OpenSSL)
- SCP / SFTP protocol

## Luci
### Collections
- luci
- luci-lib-docker
- luci-nginx
- luci-ssl-nginx
- luci-ssl-openssl

### Modules
- Minify Lua sources

#### Translations
- English
- Chinese Simplified
- Chinese Traditional

### Applications
- luci-app-acme
- luci-app-adguardhome
- luci-app-banip
- luci-app-beardropper
- luci-app-ddns
- luci-app-ddnsto
- luci-app-diskman
- luci-app-dockerman
- luci-app-frpc
- luci-app-frps
- luci-app-iptvhelper
- luci-app-mentohust
- luci-app-minidlna
- luci-app-mwan3
- luci-app-nft-qos
- luci-app-nlbwmon
- luci-app-oaf
- luci-app-openclash
- luci-app-passwall2 (With all mods)
- luci-app-qos
- luci-app-serverchan
- luci-app-smartdns
- luci-app-timecontrol
- luci-app-ttyd
- luci-app-udpxy
- luci-app-upnp
- luci-app-wifischedule
- luci-app-wireguard
- luci-app-wol
- luci-app-wrtbwmon

### Themes
- luci-theme-argon
- luci-app-argon-config

## Network
- acme-dnsapi
- adguardhome

### IP Addresses and Names
- ddns-scripts (With all mods)
- ddns-scripts-services
- ddns-scripts_aliyun

### SSH
- openssh-client
- openssh-client-utils
- openssh-keygen
- openssh-server
- openssh-sftp-client
- openssh-sftp-server

### VPN
- (-) softethervpn5-bridge
- softethervpn5-server
- strongswan
  - strongswan-default
  - strongswan-pki
  - strongswan-mod-openssl
  - strongswan-mod-curl
  - strongswan-mod-dhcp
  - strongswan-mod-eap-tls
  - strongswan-mod-eap-identity
  - strongswan-mod-kernel-libipsec
  - strongswan-mod-test-vectors
  - strongswan-mod-farp

### Version Control Systems
- git

### Web Servers/Proxies
- nginx-all-module

## Utilities
- docker-compose
- usbutils (Smartphone USB network sharing)
- shadow-utils
- tar

### Compression
- gzip
- unrar
- xz-utils

### Editors
- nano-full

### Shells
- zsh

### Zoneinfo
- zoneinfo-asia
- zoneinfo-core

### libimobiledevice
- usbmuxd (Smartphone USB network sharing)
