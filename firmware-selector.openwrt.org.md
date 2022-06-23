# OpenWrt Official Default Packages 21.02.3

```
base-files busybox ca-bundle dnsmasq dropbear e2fsprogs firewall fstools ip6tables iptables kmod-bnx2 kmod-button-hotplug kmod-e1000 kmod-e1000e kmod-forcedeth kmod-igb kmod-ipt-offload kmod-ixgbe kmod-r8169 libc libgcc libustream-wolfssl logd mkf2fs mtd netifd odhcp6c odhcpd-ipv6only opkg partx-utils ppp ppp-mod-pppoe procd uci uclient-fetch urandom-seed urngd
```

# dnsmasq-full

```
dnsmasq-full
```

# Base Luci

```
luci luci-base luci-app-opkg luci-app-firewall
```

# Base Luci Language Pack

```
luci-i18n-base-<lang> luci-i18n-opkg-<lang> luci-i18n-firewall-<lang>
```

# Mount Points

```
block-mount
```

# Software netflow exporter

```
softflowd
```

# Load Balancing

```
luci-app-mwan3 luci-i18n-mwan3-<lang>
```

# CPU Freq

```
luci-app-cpufreq luci-i18n-cpufreq-<lang>
```

# services

## BearDropper

```
luci-app-beardropper luci-i18n-beardropper-<lang>
```

## ACME

```
acme-dnsapi luci-app-acme luci-i18n-acme-<lang>
```

## DDNS

```
ddns-scripts ddns-scripts-cloudflare ddns-scripts-dnspod luci-app-ddns luci-i18n-ddns-<lang>
```

## QoS Nftables

```
luci-app-nft-qos luci-i18n-nft-qos-<lang>
```

## WiFi Schedule

```
luci-app-wifischedule luci-i18n-wifischedule-<lang>
```

## Bandwidth Monitor

```
luci-app-nlbwmon luci-i18n-nlbwmon-<lang>
```

## Wake on LAN

```
luci-app-wol luci-i18n-wol-<lang>
```

## frp

```
luci-app-frpc luci-app-frps luci-i18n-frpc-<lang> luci-i18n-frps-<lang>
```

## TTYD Terminal

```
luci-app-ttyd luci-i18n-ttyd-<lang>
```

## UPnP

```
luci-app-upnp luci-i18n-upnp-<lang>
```

## udpxy

```
luci-app-udpxy luci-i18n-udpxy-<lang>
```

## SmartDNS

```
luci-app-smartdns luci-i18n-smartdns-<lang>
```

## QoS

```
luci-app-qos luci-i18n-qos-<lang>
```

# Docker

```
docker docker-compose dockerd luci-app-dockerman luci-i18n-dockerman-<lang>
```

# Statistics

```
collectd luci-app-statistics luci-i18n-statistics-<lang> collectd-mod-cpu collectd-mod-cpufreq collectd-mod-disk collectd-mod-interface collectd-mod-iwinfo collectd-mod-load collectd-mod-memory collectd-mod-network collectd-mod-rrdtool collectd-mod-sensors collectd-mod-smart collectd-mod-thermal collectd-mod-wireless
```

# adguardhome

```
adguardhome
```

# nginx

```
nginx nginx-util nginx-ssl-util nginx-mod-luci nginx-mod-luci-ssl luci-nginx luci-ssl-nginx
```

## Optional

```
nginx-all-module
```

# KMod

## Native Language Support

```
kmod-nls-cp936 kmod-nls-cp950
```

## SDCard

```
kmod-sdhci
```

# USB Network Sharing

```
kmod-usb-net-cdc-eem kmod-usb-net-cdc-ncm kmod-usb-net-cdc-subset kmod-usb-net-huawei-cdc-ncm kmod-usb-net-ipheth kmod-usb-net-rndis kmod-usb2 kmod-usb3 usbutils usbmuxd
```

# curl

```
curl
```

# VPN

## OpenVPN

```
luci-app-openvpn luci-i18n-openvpn-<lang> openvpn-openssl
```

## SoftEther

```
softethervpn-client softethervpn-server
```

## Zerotier

```
zerotier
```

# Git

```
git git-http
```

# Which

```
which
```

# nano

```
nano-full
```

# zsh

```
zsh
```

# Compression

```
tar gzip unrar
```

# Zoneinfo

```
zoneinfo-asia zoneinfo-core
```

# Example x86
```
dnsmasq-full luci luci-base luci-app-opkg luci-app-firewall luci-i18n-base-en luci-i18n-base-zh-cn luci-i18n-base-zh-tw luci-i18n-opkg-en luci-i18n-opkg-zh-cn luci-i18n-opkg-zh-tw luci-i18n-firewall-en luci-i18n-firewall-zh-cn luci-i18n-firewall-zh-tw block-mount softflowd luci-app-mwan3 luci-i18n-mwan3-en luci-i18n-mwan3-zh-cn luci-i18n-mwan3-zh-tw  luci-app-beardropper luci-i18n-beardropper-en luci-i18n-beardropper-zh-cn luci-i18n-beardropper-zh-tw acme-dnsapi luci-app-acme luci-i18n-acme-en luci-i18n-acme-zh-cn luci-i18n-acme-zh-tw ddns-scripts ddns-scripts-cloudflare luci-app-ddns luci-i18n-ddns-en luci-i18n-ddns-zh-cn luci-i18n-ddns-zh-tw luci-app-nft-qos luci-i18n-nft-qos-en luci-i18n-nft-qos-zh-cn luci-i18n-nft-qos-zh-tw luci-app-wifischedule luci-i18n-wifischedule-en luci-i18n-wifischedule-zh-cn luci-i18n-wifischedule-zh-tw luci-app-nlbwmon luci-i18n-nlbwmon-en luci-i18n-nlbwmon-zh-cn luci-i18n-nlbwmon-zh-tw luci-app-wol luci-i18n-wol-en luci-i18n-wol-zh-cn luci-i18n-wol-zh-tw luci-app-frpc luci-app-frps luci-i18n-frpc-en luci-i18n-frpc-zh-cn luci-i18n-frpc-zh-tw luci-i18n-frps-en luci-i18n-frps-zh-cn luci-i18n-frps-zh-tw luci-app-ttyd luci-i18n-ttyd-en luci-i18n-ttyd-zh-cn luci-i18n-ttyd-zh-tw luci-app-upnp luci-i18n-upnp-en luci-i18n-upnp-zh-cn luci-i18n-upnp-zh-tw luci-app-udpxy luci-i18n-udpxy-en luci-i18n-udpxy-zh-cn luci-i18n-udpxy-zh-tw luci-app-smartdns luci-i18n-smartdns-en luci-i18n-smartdns-zh-cn luci-i18n-smartdns-zh-tw luci-app-qos luci-i18n-qos-en luci-i18n-qos-zh-cn luci-i18n-qos-zh-tw docker docker-compose dockerd luci-app-dockerman luci-i18n-dockerman-en luci-i18n-dockerman-zh-cn luci-i18n-dockerman-zh-tw collectd luci-app-statistics luci-i18n-statistics-en luci-i18n-statistics-zh-cn luci-i18n-statistics-zh-tw collectd-mod-cpu collectd-mod-cpufreq collectd-mod-disk collectd-mod-interface collectd-mod-iwinfo collectd-mod-load collectd-mod-memory collectd-mod-network collectd-mod-rrdtool collectd-mod-sensors collectd-mod-smart collectd-mod-thermal collectd-mod-wireless adguardhome nginx nginx-util nginx-ssl-util nginx-mod-luci nginx-mod-luci-ssl luci-nginx luci-ssl-nginx nginx-all-module kmod-nls-cp936 kmod-nls-cp950 kmod-sdhci kmod-usb-net-cdc-eem kmod-usb-net-cdc-ncm kmod-usb-net-cdc-subset kmod-usb-net-huawei-cdc-ncm kmod-usb-net-ipheth kmod-usb-net-rndis kmod-usb2 kmod-usb3 usbutils usbmuxd curl luci-app-openvpn luci-i18n-openvpn-en luci-i18n-openvpn-zh-cn luci-i18n-openvpn-zh-tw openvpn-openssl softethervpn-client softethervpn-server zerotier git git-http which nano-full zsh tar gzip unrar zoneinfo-asia zoneinfo-core
```