#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Socks tools
echo 'src-git openwrt-passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src-git OpenClash https://github.com/vernesong/OpenClash' >>feeds.conf.default

# Tools
echo 'src-git luci-app-diskman https://github.com/lisaac/luci-app-diskman' >>feeds.conf.default
echo 'src-git openwrt-iptvhelper https://github.com/riverscn/openwrt-iptvhelper' >>feeds.conf.default
echo "src-git natelol https://github.com/natelol/natelol" >> feeds.conf.default
echo "src-git wrtbwmon https://github.com/brvphoenix/wrtbwmon" >> feeds.conf.default
echo "src-git luci-app-wrtbwmon https://github.com/brvphoenix/luci-app-wrtbwmon" >> feeds.conf.default
echo "src-git smartdns https://github.com/pymumu/smartdns" >> feeds.conf.default
echo "src-git OpenAppFilter https://github.com/destan19/OpenAppFilter" >> feeds.conf.default
echo 'src-git linkease https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git linkease_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
echo 'src-git linkease_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

#echo 'src-git MentoHUST-OpenWrt-ipk https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' >>feeds.conf.default
#echo 'src-git luci-app-mentohust https://github.com/BoringCat/luci-app-mentohust' >>feeds.conf.default
#echo 'src-git luci-app-adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' >>feeds.conf.default
#echo "src-git luci-app-serverchan https://github.com/tty228/luci-app-serverchan" >> feeds.conf.default
#echo "src-git ddns-scripts_aliyun https://github.com/sensec/ddns-scripts_aliyun" >> feeds.conf.default
#echo "src-git luci-app-vlmcsd https://github.com/flytosky-f/luci-app-vlmcsd" >> feeds.conf.default
#echo "src-git ddns-scripts_dnspod https://github.com/coolsnowwolf/lede/tree/master/package/lean/ddns-scripts_dnspod" >> feeds.conf.default
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/sensec/ddns-scripts_aliyun.git package/ddns-scripts_aliyun
git clone https://github.com/flytosky-f/luci-app-vlmcsd.git package/luci-app-vlmcsd
wget https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/ddns-scripts_dnspod/Makefile package/ddns-scripts_dnspod/Makefile
wget https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/ddns-scripts_dnspod/update_dnspod_cn.sh package/ddns-scripts_dnspod/update_dnspod_cn.sh
wget https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/ddns-scripts_dnspod/update_dnspod_com.sh package/ddns-scripts_dnspod/update_dnspod_com.sh

# Themes
#echo 'src-git luci-theme-argon https://github.com/jerrykuku/luci-theme-argon' >> feeds.conf.default
#echo 'src-git luci-app-netdata https://github.com/sirpdboy/luci-app-netdata' >> feeds.conf.default
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-theme-argon-config
