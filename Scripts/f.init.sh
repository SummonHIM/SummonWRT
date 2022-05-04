#!/bin/sh
# Useage: sh -c "$(curl -fsSL https://raw.githubusercontent.com/SummonHIM/SummonWrt/master/Scripts/f.init.sh)"
#Generate from https://tooltt.com/art-ascii/
# _______                                       ________        __
#|     __|.--.--.--------.--------.-----.-----.|  |  |  |.----.|  |_
#|__     ||  |  |        |        |  _  |     ||  |  |  ||   _||   _|
#|_______||_____|__|__|__|__|__|__|_____|__|__||________||__|  |____|
echo " _______                                       ________        __"
echo "|     __|.--.--.--------.--------.-----.-----.|  |  |  |.----.|  |_"
echo "|__     ||  |  |        |        |  _  |     ||  |  |  ||   _||   _|"
echo "|_______||_____|__|__|__|__|__|__|_____|__|__||________||__|  |____|"
echo "          A OpenWrt release for SummonHIM"

wanConfig() {
	echo "您可在此处查看完整的协议列表：https://openwrt.org/docs/guide-user/base-system/basic-networking#interface_sections"
	read -r -p "请输入新的协议（常用的协议有：dhcp、dhcpv6、pppoe，留空则跳过）： " nWanProto
	if [ -n "$nWanProto" ]; then
		echo "正在设置新协议为：$nWanProto"
		uci set network.wan.proto=$nWanProto
	else
		echo "不设置新的协议。"
	fi

	read -r -p "请输入协议所需的用户名（可选，留空则跳过）： " nWanUserName
	if [ -n "$nWanUserName" ]; then
		echo "正在设置新用户名为：$nWanUserName"
		uci set network.wan.username=$nWanUserName
	else
		echo "不设置用户名。"
	fi

	read -r -s -p "请输入协议所需的密码（可选，留空则跳过）：" nWanPassWd
	if [ -n "$nWanPassWd" ]; then
		echo
		echo "正在设置新密码..."
		uci set network.wan.password=$nWanPassWd
	else
		echo
		echo "不设置密码。"
	fi

	read -r -p "是否设置 IPv6（是/否/自动） [y/n/A] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在设置 wan 接口 IPv6 为：手动"
		uci set network.wan.ipv6='1'
		;;
	[nN][oO] | [nN])
		echo "正在设置 wan 接口 IPv6 为：禁用"
		uci set network.wan.ipv6='0'
		;;
	[aA][uU][tT][oO] | [aA])
		echo "正在设置 wan 接口 IPv6 为：自动"
		uci set network.wan.ipv6='auto'
		;;
	*)
		echo "正在设置 wan 接口 IPv6 为：自动"
		uci set network.wan.ipv6='auto'
		;;
	esac
}

Lanv6Assign() {
	read -r -p "请输入新分配长度（留空则设为 64）： " nLanv6Assign
	if [ -n "$nLanv6Assign" ]; then
		echo "正在修改 lan 接口的 IPv6 分配长度为：$nLanv6Assign"
		uci set network.lan.ip6assign=$nLanv6Assign
	else
		nLanv6Assign=64
		echo "正在修改 lan 接口的 IPv6 分配长度为：$nLanv6Assign"
		uci set network.lan.ip6assign=$nLanv6Assign
	fi
}

dhcpLTime() {
	read -r -p "请输入新的租期时间（留空则使用 20h）： " ndhcpLTime
	if [ -n "$ndhcpLTime" ]; then
		echo "正在修改 lan 接口的 DHCP 租期为：$ndhcpLTime"
		uci set dhcp.lan.leasetime=$ndhcpLTime
	else
		ndhcpLTime=20h
		echo "正在修改 lan 接口的 DHCP 租期为：$ndhcpLTime"
		uci set dhcp.lan.leasetime=$ndhcpLTime
	fi
}

networkConfig() {
	echo "--------------------------------------------------------------------"
	echo "          _______         __                        __"
	echo "         |    |  |.-----.|  |_.--.--.--.-----.----.|  |--."
	echo "         |       ||  -__||   _|  |  |  |  _  |   _||    <"
	echo "         |__|____||_____||____|________|_____|__|  |__|__|"
	echo "                   网络设置"
	echo "--------------------------------------------------------------------"
	echo "尝试通过 wan 口连接网络"
	echo
	read -r -p "是否需要修改 wan 接口的设置？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		wanConfig
		;;
	[nN][oO] | [nN])
		echo "跳过 wan 接口设置。"
		;;
	*)
		wanConfig
		;;
	esac

	echo
	read -r -p "是否需要删除接口 wan6？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在删除接口 wan6..."
		uci delete network.wan6
		;;

	[nN][oO] | [nN])
		echo "不删除接口 wan6。"
		;;

	*)
		echo "正在删除接口 wan6..."
		uci delete network.wan6
		;;
	esac

	echo
	read -r -p "是否需要修改 lan 接口的 IPv6 分配长度 [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		Lanv6Assign
		;;

	[nN][oO] | [nN])
		echo "不修改 lan 接口的 IPv6 分配长度。"
		;;

	*)
		Lanv6Assign
		;;
	esac

	echo
	read -r -p "是否需要修改 lan 接口的 DHCP 租期 [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		dhcpLTime
		;;

	[nN][oO] | [nN])
		echo "不修改 lan 接口的 DHCP 租期。"
		;;

	*)
		dhcpLTime
		;;
	esac

	echo
	read -r -p "是否启用防火墙软件流量分载？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在启用防火墙软件流量分载..."
		uci set firewall.@defaults[0].flow_offloading=1		
		;;

	[nN][oO] | [nN])
		echo "不启用防火墙软件流量分载..."
		;;

	*)
		echo "正在启用防火墙软件流量分载..."
		uci set firewall.@defaults[0].flow_offloading=1		
		;;
	esac

	echo
	echo 正在保存设置并重启网络...
	uci commit
	rm $(uci get dhcp.@dnsmasq[0].leasefile)
	/etc/init.d/odhcpd restart
	/etc/init.d/dnsmasq restart
	/etc/init.d/firewall restart
	/etc/init.d/network restart
}

nginxRemoveRedir2SSL() {
	uci delete nginx._redirect2ssl
	uci delete nginx._lan.listen

	read -r -p "是否需要 http2？ [y/N] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在添加 http2..."
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 http2 ssl reuseport'
		;;

	[nN][oO] | [nN])
		echo "不添加 http2..."
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 ssl reuseport'
		;;

	*)
		echo "不添加 http2..."
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 ssl reuseport'
		;;
	esac

	read -r -p "是否需要监听 IPv6？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在添加 IPv6 监听..."
		uci add_list nginx._lan.listen='[::]:80 reuseport'
		uci add_list nginx._lan.listen='[::]:443 ssl reuseport'
		;;

	[nN][oO] | [nN])
		echo "不添加 IPv6 监听..."
		;;

	*)
		echo "正在添加 IPv6 监听..."
		uci add_list nginx._lan.listen='[::]:80 reuseport'
		uci add_list nginx._lan.listen='[::]:443 ssl reuseport'
		;;
	esac
}

nginxConfig() {
	echo "--------------------------------------------------------------------"
	echo "                   _______         __"
	echo "                  |    |  |.-----.|__|.-----.--.--."
	echo "                  |       ||  _  ||  ||     |_   _|"
	echo "                  |__|____||___  ||__||__|__|__.__|"
	echo "                           |_____| Nginx 网页服务器设置"
	echo "--------------------------------------------------------------------"
	read -r -p "是否需要删除自动重定向至 https？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		nginxRemoveRedir2SSL
		;;

	[nN][oO] | [nN])
		echo "不删除自动重定向至 https。"
		;;

	*)
		nginxRemoveRedir2SSL
		;;
	esac

	read -r -p "是否阻止公网访问？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "不删除现有的阻止规则..."
		;;

	[nN][oO] | [nN])
		echo "正在删除现有的阻止规则..."
		uci del_list nginx._lan.include='restrict_locally'
		;;

	*)
		echo "不删除现有的阻止规则..."
		;;
	esac

	uci commit
	/etc/init.d/nginx restart
}

opkgSetup() {
	echo "--------------------------------------------------------------------"
	echo "                     _______         __"
	echo "                    |       |.-----.|  |--.-----."
	echo "                    |   -   ||  _  ||    <|  _  |"
	echo "                    |_______||   __||__|__|___  |"
	echo "                             |__|软件源设置|_____|"
	echo "--------------------------------------------------------------------"
	read -r -p "是否需要更换 Opkg 软件源？ [Y/n] " kbdInput
	nowSoftwareFeed=$(grep -rnm 1 "http" /etc/opkg/distfeeds.conf | sed -r 's/.*\/\/(.*)\/releases.*/\1/')
	case $kbdInput in
	[yY][eE][sS] | [yY])
		read -r -p "请输入新软件源（例：mirrors.ustc.edu.cn/openwrt）： " nSoftwareFeed
		sed -i "s/$nowSoftwareFeed/$nSoftwareFeed/g" /etc/opkg/distfeeds.conf
		;;

	[nN][oO] | [nN])
		echo "不更换软件源。"
		;;

	*)
		read -r -p "请输入新软件源（例：mirrors.ustc.edu.cn/openwrt）： " nSoftwareFeed
		sed -i "s/$nowSoftwareFeed/$nSoftwareFeed/g" /etc/opkg/distfeeds.conf
		;;
	esac

	read -r -p "是否需要刷新 Opkg 软件源缓存（opkg update）？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在刷新软件源缓存..."
		opkg update
		;;

	[nN][oO] | [nN])
		echo "不刷新软件源缓存。"
		;;

	*)
		echo "正在刷新软件源缓存..."
		opkg update
		;;
	esac
}

zshSetup() {
	echo "--------------------------------------------------------------------"
	echo "                       _______         __"
	echo "                      |__     |.-----.|  |--."
	echo "                      |     __||__ --||     |"
	echo "                      |_______||_____||__|__|"
	echo "                        初始化 zsh"
	echo "--------------------------------------------------------------------"
	read -r -p "是否需要初始化 zsh（需要互联网连接）？ [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "正在初始化 zsh..."
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
		;;

	[nN][oO] | [nN])
		echo "不初始化 zsh。"
		;;

	*)
		echo "正在初始化 zsh..."
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
		;;
	esac
}

echo
networkConfig
echo
nginxConfig
echo
opkgSetup
echo
zshSetup
echo
echo "--------------------------------------------------------------------"
echo "             _______"
echo "            |     __|.--.--.----.----.-----.-----.-----."
echo "            |__     ||  |  |  __|  __|  -__|__ --|__ --|"
echo "            |_______||_____|____|____|_____|_____|_____|"
echo "--------------------------------------------------------------------"
echo "所有操作已完成。"
