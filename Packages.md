# Packages list
## x86_64 Target Images
- (3) Seconds to wait before booting the default entry
- (SummonWrt) Title for the menu entry in GRUB
- [x] Build LiveCD image (ISO)
- [x] Build VirtualBox image files (VDI)
- [x] Build VMware image files (VMDK)
- [x] Build Hyper-V image files (VHDX)
- (1024) Root filesystem partition size (in MB)

## RK3328 NanoPi R2S Target Images
- [x] tar.gz
- (1024) Root filesystem partition size (in MB)

## MT7621 Xiaomi Redmi Router AC2100 Target Images
- [x] tar.gz

## Global build settings
- [x] Select all target specific packages by default

## Base system
- [x] block-mount
- [ ] dnsmasq

## Extra packages
- [x] nginx
- [x] nginx-mod-luci-ssl
- [x] nginx-util

## Kernel modules
### Native Language Support
- [x] kmod-nls-cp936 (Simplified Chinese)
- [x] kmod-nls-cp950 (Traditional Chinese)

### Other modules
- [x] kmod-sdhci (No AC2100)

### USB Support
--- Smartphone USB network sharing (No AC2100)---

- [x] kmod-usb-net-cdc-eem
- [x] kmod-usb-net-cdc-ncm
- [x] kmod-usb-net-cdc-subset
- [x] kmod-usb-net-huawei-cdc-ncm
- [x] kmod-usb-net-ipheth
- [x] kmod-usb-net-rndis
- [x] kmod-usb2
- [x] kmod-usb3

--- EOL Smartphone USB network sharing (No AC2100)---

## Libraries
### libcurl
- [x] Selected SSL library (OpenSSL)
- [x] SCP / SFTP protocol

## Luci
### Collections
- [x] luci
- [x] luci-lib-docker (No AC2100)
- [x] luci-nginx
- [x] luci-ssl-nginx
- [x] luci-ssl-openssl

### Modules
- [ ] Minify JavaScript sources
- [ ] Minify CSS files

#### Translations
- [x] English
- [x] Chinese Simplified
- [x] Chinese Traditional

### Applications
- [x] luci-app-acme
- [x] luci-app-adguardhome
- [x] luci-app-beardropper
- [x] luci-app-cpufreq (Armv8 only)
- [x] luci-app-ddns
- [x] luci-app-ddnsto
- [x] luci-app-diskman
- [x] luci-app-dockerman (No AC2100)
- [x] luci-app-dogcom
- [x] luci-app-frpc
- [x] luci-app-frps
- [x] luci-app-iptvhelper
- [x] luci-app-mentohust
- [x] luci-app-mwan3
- [x] luci-app-nft-qos
- [x] luci-app-nlbwmon
- [x] luci-app-oaf
- [x] luci-app-openclash
- [x] luci-app-openvpn
- [x] luci-app-passwall (With all mods)
- [x] luci-app-qos
- [x] luci-app-serverchan
- [x] luci-app-smartdns
- [x] luci-app-statistics
- [x] luci-app-timecontrol
- [x] luci-app-ttyd
- [x] luci-app-udpxy
- [x] luci-app-upnp
- [x] luci-app-wifischedule
- [x] luci-app-wireguard
- [x] luci-app-wol
- [x] luci-app-wrtbwmon
- [x] luci-app-zerotier

### Themes
- [x] luci-theme-argon
- [x] luci-app-argon-config

## Network
- [x] acme-dnsapi
- [x] adguardhome
- [x] softflowd

### IP Addresses and Names
- [x] ddns-scripts (With all mods)
- [x] ddns-scripts-services
- [x] ddns-scripts_aliyun

### VPN
- [x] openvpn-openssl
- [x] softethervpn-client
- [x] softethervpn-server
- [x] zerotier

### Version Control Systems
- [x] git
- [x] git-http

### Web Servers/Proxies
- [x] nginx-ssl
  - [x] Enable RTMP module

## Utilities
- [x] collectd
  - [x] collectd-mod-cpu
  - [x] collectd-mod-cpufreq
  - [x] collectd-mod-disk
  - [x] collectd-mod-interface
  - [x] collectd-mod-iwinfo
  - [x] collectd-mod-load
  - [x] collectd-mod-memory
  - [x] collectd-mod-network
  - [x] collectd-mod-rrdtool
  - [x] collectd-mod-sensors
  - [x] collectd-mod-smart
  - [x] collectd-mod-thermal
  - [x] collectd-mod-wireless
- [x] docker-compose (No AC2100)
- [x] dockerd (No AC2100)
- [x] tar
- [x] usbutils (Smartphone USB network sharing | No AC2100)
- [x] which

### Compression
- [x] gzip
- [x] unrar
- [x] xz-utils

### Editors
- [x] nano-full

### Shells
- [x] zsh

### Zoneinfo
- [x] zoneinfo-asia
- [x] zoneinfo-core

### libimobiledevice
- [x] usbmuxd (Smartphone USB network sharing | No AC2100)
