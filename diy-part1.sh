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
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
#git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git -b luci package/luci-app-passwall
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/OpenClash
git clone --depth 1 https://github.com/lisaac/luci-app-diskman.git package/luci-app-diskman
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
git clone --depth 1 https://github.com/natelol/natelol.git package/natelol
git clone --depth 1 https://github.com/brvphoenix/wrtbwmon.git package/wrtbwmon
git clone --depth 1 https://github.com/brvphoenix/luci-app-wrtbwmon.git package/luci-app-wrtbwmon
git clone --depth 1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
mv package/OpenAppFilter/luci-app-oaf/po/zh-cn package/OpenAppFilter/luci-app-oaf/po/zh_Hans
git clone --depth 1 https://github.com/linkease/nas-packages.git package/linkease
mkdir package/ddnsto
mv package/linkease/network/services/ddnsto package/ddnsto
rm -rf package/linkease
git clone --depth 1 https://github.com/linkease/nas-packages-luci.git package/linkease_luci
mkdir package/luci-app-ddnsto
mv package/linkease_luci/luci/luci-app-ddnsto package/luci-app-ddnsto
rm -rf package/linkease_luci
git clone --depth 1 https://github.com/SummonHIM/luci-app-timecontrol.git package/luci-app-timecontrol
git clone --depth 1 https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone --depth 1 https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone --depth 1 https://github.com/rufengsuixing/luci-app-zerotier.git package/luci-app-zerotier
mv package/luci-app-zerotier/po/zh-cn package/luci-app-zerotier/po/zh_Hans
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/luci-theme-argon-config

# immortalwrt
git clone --depth 1 https://github.com/immortalwrt/immortalwrt.git -b openwrt-21.02 package/immortalpkg
git clone --depth 1 https://github.com/immortalwrt/packages.git -b openwrt-21.02 package/immortalpkg-packages
git clone --depth 1 https://github.com/immortalwrt/luci.git -b openwrt-21.02 package/immortalpkg-luci

cp -r package/immortalpkg-packages/net/mentohust package/mentohust
cp -r package/immortalpkg-packages/net/ddns-scripts_dnspod package/ddns-scripts_dnspod
cp -r package/immortalpkg-packages/net/ddns-scripts_aliyun package/ddns-scripts_aliyun
cp -r package/immortalpkg-luci/applications/luci-app-mentohust package/luci-app-mentohust
sed -i "s/include ..\/..\/luci.mk/include ..\/..\/feeds\/luci\/luci.mk/g" package/luci-app-mentohust/Makefile
cp -r package/immortalpkg-luci/applications/luci-app-cpufreq package/luci-app-cpufreq
sed -i "s/include ..\/..\/luci.mk/include ..\/..\/feeds\/luci\/luci.mk/g" package/luci-app-cpufreq/Makefile

rm -rf package/immortalpkg package/immortalpkg-packages package/immortalpkg-luci