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

#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Socks tools
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >>feeds.conf.default
echo 'src-git OpenClash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default

# System
echo 'src-git luci_app_diskman https://github.com/lisaac/luci-app-diskman.git' >>feeds.conf.default

# Service
echo 'src-git openwrt_iptvhelper https://github.com/riverscn/openwrt-iptvhelper.git' >>feeds.conf.default
echo "src-git natelol https://github.com/natelol/natelol.git" >> feeds.conf.default
echo "src-git wrtbwmon https://github.com/brvphoenix/wrtbwmon.git" >> feeds.conf.default
echo "src-git luci_wrtbwmon https://github.com/brvphoenix/luci-app-wrtbwmon.git" >> feeds.conf.default
echo "src-git smartdns https://github.com/pymumu/smartdns.git" >> feeds.conf.default
echo "src-git OpenAppFilter https://github.com/destan19/OpenAppFilter.git" >> feeds.conf.default
echo 'src-git linkease https://github.com/linkease/nas-packages.git' >> feeds.conf.default
echo 'src-git linkease_luci https://github.com/linkease/nas-packages-luci.git' >> feeds.conf.default
echo 'src-git luci_app_timecontrol https://github.com/SummonHIM/luci-app-timecontrol.git' >> feeds.conf.default
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/sensec/ddns-scripts_aliyun.git package/ddns-scripts_aliyun

# Lede
git clone https://github.com/coolsnowwolf/lede.git package/ledepkg
git clone https://github.com/coolsnowwolf/packages.git package/ledepkg-packages
git clone https://github.com/coolsnowwolf/luci.git package/ledepkg-luci

cp -r package/ledepkg/package/lean/ddns-scripts_dnspod package/ddns-scripts_dnspod

cp -r package/ledepkg/package/lean/shortcut-fe package/shortcut-fe

cp -r package/ledepkg-packages/net/dnsforwarder package/dnsforwarder

cp -r package/ledepkg-packages/net/dnsproxy package/dnsproxy

cp -r package/ledepkg-luci/applications/luci-app-cpufreq package/luci-app-cpufreq
sed -i "s/include ..\/..\/luci.mk/include ..\/..\/feeds\/luci\/luci.mk/g" package/luci-app-cpufreq/Makefile
mv package/luci-app-cpufreq/po/zh-cn package/luci-app-cpufreq/po/zh_Hans

cp -r package/ledepkg-luci/applications/luci-app-turboacc package/luci-app-turboacc
sed -i "s/include ..\/..\/luci.mk/include ..\/..\/feeds\/luci\/luci.mk/g" package/luci-app-turboacc/Makefile
mv package/luci-app-turboacc/po/zh-cn package/luci-app-turboacc/po/zh_Hans

rm -rf package/ledepkg package/ledepkg-packages package/ledepkg-luci

# Themes
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-theme-argon-config
