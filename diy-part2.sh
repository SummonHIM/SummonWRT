#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Change zh-cn to zh-Hans
mv feeds/OpenAppFilter/luci-app-oaf/po/zh-cn feeds/OpenAppFilter/luci-app-oaf/po/zh_Hans

# Modify System Setting
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i "s/hostname='OpenWrt'/hostname='SummonWrt'/g" package/base-files/files/bin/config_generate
sed -i "s/timezone='UTC'/timezone='CST-8'/g" package/base-files/files/bin/config_generate
sed -i "s/openwrt.pool.ntp.org/cn.pool.ntp.org/g" package/base-files/files/bin/config_generate
echo '/bin/zsh' >package/base-files/files/etc/shells
echo '/bin/ash' >>package/base-files/files/etc/shells
