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

English() {
	langSysPassWd="Do you wanna change the root password?"
	langSysPassWdNoSet="Will not change the root password."
	langNetCfg="Settings"
	langNetCfgWanMsg="Try to connect to the network through the wan interface."
	langNetCfgWanYN="Do you wanna modify the settings of the wan interface?"
	langNetCfgWanSkip="Skip the wan setting."
	langNetCfgWanProto="Check the full proto list on: "
	langNetCfgWanProto2="Please enter the new proto (Sample: dhcp、dhcpv6、pppoe, Leave blank to skip): "
	langNetCfgWanProtoSet="Modifying the new proto to "
	langNetCfgWanProtoNoSet="Skip the proto setting."
	langNetCfgWanUserName="Please enter the username (Optional, Leave blank to skip): "
	langNetCfgWanUserNameSet="Set new username to "
	langNetCfgWanUserNameNoSet="Skip the username setting."
	langNetCfgWanPassWd="Please enter the username (Optional, Leave blank to skip): "
	langNetCfgWanPassWdSet="Setting new password..."
	langNetCfgWanPassWdNoSet="Skip the password setting."
	langNetCfgWanIPv6="Enable IPv6 (Manual/Disabled/Automatic)?"
	langNetCfgWanIPv6Set="Modifying the wan's ipv6 to "
	langNetCfgWanIPv6On="Manual."
	langNetCfgWanIPv6Off="Disabled."
	langNetCfgWanIPv6Auto="Automatic."
	langNetCfgLanIPv6Assign="Do you wanna modify the IPv6 assignment length for lan interface?"
	langNetCfgLanIPv6Assign2="Please enter the new length (Leave blank to set to 64): "
	langNetCfgLanIPv6AssignSet="Modifying the IPv6 assignment length for lan interface to "
	langNetCfgLanIPv6AssignNoSet="Skip modifying IPv6 assignment length for lan interface."
	langNetCfgLanDHCPLTime="Do you wanna modify the DHCP lease time for lan interface?"
	langNetCfgLanDHCPLTime2="Please enter the new time (Leave blank to set to 20h): "
	langNetCfgLanDHCPLTimeSet="Modifying the DHCP lease time for lan interface to "
	langNetCfgLanDHCPLTimeNoSet="Skip modifying DHCP lease time."
	langNetCfgDelWan6="Do you wanna remove the interface wan6?"
	langNetCfgDelWan6Set="Removing interface wan6..."
	langNetCfgDelWan6NoSet="Skip removing the interface wan6."
	langNetCfgFlowOffload="Do you wanna enable the Software flow offloading."
	langNetCfgFlowOffloadSet="Enabling Software flow offloading..."
	langNetCfgFlowOffloadNoSet="Skip enabling the Software flow offloading."
	langNetCfgSave="Committing setting and restart the network..."
	langNginx="Settings"
	langNginxRmRedir2SSL="Do you wanna remove redirect http to https?"
	langNginxRmRedir2SSLhttp2="Do you wanna enable the http2?"
	langNginxRmRedir2SSLhttp2Set="Enabling http2..."
	langNginxRmRedir2SSLhttp2NoSet="Skip enabling http2."
	langNginxRmRedir2SSLIPv6="Do you wanna listen IPv6?"
	langNginxRmRedir2SSLIPv6Set="Adding IPv6 listen..."
	langNginxRmRedir2SSLIPv6NoSet="Skip adding IPv6 listen."
	langNginxRmRedir2SSLNoSet="Skip removing redirect http to https."
	langNginxRmLocallyAccess="Do you wanna deny public network access?"
	langNginxRmLocallyAccessSet="Removing exist deny rules..."
	langNginxRmLocallyAccessNoSet="Skip removing exist deny rules."
	langOpkg=" Settings"
	langOpkgChangeFeed="Do you wanna modify Opkg's software feed?"
	langOpkgChangeFeedNow="Current software feed: "
	langOpkgChangeFeedSet="Please enter new software feed (Sample: mirrors.ustc.edu.cn\/openwrt): "
	langOpkgChangeFeedNoSet="Skip modifying the software feed."
	langOpkgUpdate="Do you wanna run opkg update?"
	langOpkgUpdateSet="Running opkg update..."
	langOpkgUpdateNoset="Skip running opkg update."
	langzsh="Initialization"
	langzshInit="Do you wanna initialize the zsh (Need network connection)?"
	langzshInitSet="Initializing zsh..."
	langzshInitNoSet="Skil initializing zsh."
	langSuccess="Done!"
}

zhCN() {
	langSysPassWd="是否需要修改 root 密码？"
	langSysPassWdNoSet="不修改 root 密码。"
	langNetCfg="网络设置"
	langNetCfgWanMsg="尝试通过 wan 口连接网络"
	langNetCfgWanYN="是否需要修改 wan 接口的设置？"
	langNetCfgWanSkip="跳过 wan 接口设置。"
	langNetCfgWanProto="您可在此处查看完整的协议列表："
	langNetCfgWanProto2="请输入新的协议（常用的协议有：dhcp、dhcpv6、pppoe，留空则跳过）："
	langNetCfgWanProtoSet="正在设置新协议为："
	langNetCfgWanProtoNoSet="不设置新的协议。"
	langNetCfgWanUserName="请输入协议所需的用户名（可选，留空则跳过）："
	langNetCfgWanUserNameSet="正在设置新用户名为："
	langNetCfgWanUserNameNoSet="不设置用户名。"
	langNetCfgWanPassWd="请输入协议所需的密码（可选，留空则跳过）："
	langNetCfgWanPassWdSet="正在设置新密码..."
	langNetCfgWanPassWdNoSet="不设置密码。"
	langNetCfgWanIPv6="是否设置 IPv6（是/否/自动）？"
	langNetCfgWanIPv6Set="正在设置 wan 接口 IPv6 为："
	langNetCfgWanIPv6On="手动"
	langNetCfgWanIPv6Off="禁用"
	langNetCfgWanIPv6Auto="自动"
	langNetCfgLanIPv6Assign="是否需要修改 lan 接口的 IPv6 分配长度？"
	langNetCfgLanIPv6Assign2="请输入新分配长度（留空则设为 64）："
	langNetCfgLanIPv6AssignSet="正在修改 lan 接口的 IPv6 分配长度为："
	langNetCfgLanIPv6AssignNoSet="不修改 lan 接口的 IPv6 分配长度。"
	langNetCfgLanDHCPLTime="是否需要修改 lan 接口的 DHCP 租期？"
	langNetCfgLanDHCPLTime2="请输入新的租期时间（留空则使用 20h）："
	langNetCfgLanDHCPLTimeSet="正在修改 lan 接口的 DHCP 租期为："
	langNetCfgLanDHCPLTimeNoSet="不修改 lan 接口的 DHCP 租期。"
	langNetCfgDelWan6="是否需要删除接口 wan6？"
	langNetCfgDelWan6Set="正在删除接口 wan6..."
	langNetCfgDelWan6NoSet="不删除接口 wan6。"
	langNetCfgFlowOffload="是否启用防火墙软件流量分载？"
	langNetCfgFlowOffloadSet="正在启用防火墙软件流量分载..."
	langNetCfgFlowOffloadNoSet="不启用防火墙软件流量分载。"
	langNetCfgSave="正在保存设置并重启网络，可能会发生断网情况..."
	langNginx="Nginx 网页服务器设置"
	langNginxRmRedir2SSL="是否需要删除自动重定向至 https？"
	langNginxRmRedir2SSLhttp2="是否需要 http2？"
	langNginxRmRedir2SSLhttp2Set="正在添加 http2..."
	langNginxRmRedir2SSLhttp2NoSet="不添加 http2。"
	langNginxRmRedir2SSLIPv6="是否需要监听 IPv6？"
	langNginxRmRedir2SSLIPv6Set="正在添加 IPv6 监听..."
	langNginxRmRedir2SSLIPv6NoSet="不添加 IPv6 监听。"
	langNginxRmRedir2SSLNoSet="不删除自动重定向至 https。"
	langNginxRmLocallyAccess="是否阻止公网访问？"
	langNginxRmLocallyAccessSet="正在删除现有的阻止规则..."
	langNginxRmLocallyAccessNoSet="不删除现有的阻止规则。"
	langOpkg="设置     "
	langOpkgChangeFeed="是否需要更换 Opkg 软件源？"
	langOpkgChangeFeedNow="当前软件源为："
	langOpkgChangeFeedSet="请输入新软件源（例：mirrors.ustc.edu.cn\/openwrt）："
	langOpkgChangeFeedNoSet="不更换软件源。"
	langOpkgUpdate="是否需要刷新 Opkg 软件源缓存（opkg update）？"
	langOpkgUpdateSet="正在刷新软件源缓存..."
	langOpkgUpdateNoset="不刷新软件源缓存。"
	langzsh="初始化 zsh"
	langzshInit="是否需要初始化 zsh（需要互联网连接）？"
	langzshInitSet="正在初始化 zsh..."
	langzshInitNoSet="不初始化 zsh。"
	langSuccess="所有操作已完成。"
}

wanConfig() {
	echo "$langNetCfgWanProto https://openwrt.org/docs/guide-user/base-system/basic-networking#interface_sections"
	read -r -p "$langNetCfgWanProto2" nWanProto
	if [ -n "$nWanProto" ]; then
		echo "$langNetCfgWanProtoSet$nWanProto"
		uci set network.wan.proto=$nWanProto
	else
		echo "$langNetCfgWanProtoNoSet"
	fi

	read -r -p "$langNetCfgWanUserName" nWanUserName
	if [ -n "$nWanUserName" ]; then
		echo "$langNetCfgWanUserNameSet$nWanUserName"
		uci set network.wan.username=$nWanUserName
	else
		echo "$langNetCfgWanUserNameNoSet"
	fi

	read -r -s -p "$langNetCfgWanPassWd" nWanPassWd
	if [ -n "$nWanPassWd" ]; then
		echo
		echo "$langNetCfgWanPassWdSet"
		uci set network.wan.password=$nWanPassWd
	else
		echo
		echo "$langNetCfgWanPassWdNoSe"
	fi

	read -r -p "$langNetCfgWanIPv6 [y/n/A] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNetCfgWanIPv6Set$langNetCfgWanIPv6On"
		uci set network.wan.ipv6='1'
		;;
	[nN][oO] | [nN])
		echo "$langNetCfgWanIPv6Set$langNetCfgWanIPv6Off"
		uci set network.wan.ipv6='0'
		;;
	[aA][uU][tT][oO] | [aA])
		echo "$langNetCfgWanIPv6Set$langNetCfgWanIPv6Auto"
		uci set network.wan.ipv6='auto'
		;;
	*)
		echo "$langNetCfgWanIPv6Set$langNetCfgWanIPv6Auto"
		uci set network.wan.ipv6='auto'
		;;
	esac
}

Lanv6Assign() {
	read -r -p "$langNetCfgLanIPv6Assign2" nLanv6Assign
	if [ -n "$nLanv6Assign" ]; then
		echo "$langNetCfgLanIPv6AssignSet$nLanv6Assign"
		uci set network.lan.ip6assign=$nLanv6Assign
	else
		nLanv6Assign=64
		echo "$langNetCfgLanIPv6AssignSet$nLanv6Assign"
		uci set network.lan.ip6assign=$nLanv6Assign
	fi
}

dhcpLTime() {
	read -r -p "$langNetCfgLanDHCPLTime2" ndhcpLTime
	if [ -n "$ndhcpLTime" ]; then
		echo "$langNetCfgLanDHCPLTimeSet$ndhcpLTime"
		uci set dhcp.lan.leasetime=$ndhcpLTime
	else
		ndhcpLTime=20h
		echo "$langNetCfgLanDHCPLTimeSet$ndhcpLTime"
		uci set dhcp.lan.leasetime=$ndhcpLTime
	fi
}

networkConfig() {
	echo "--------------------------------------------------------------------"
	echo "          _______         __                        __"
	echo "         |    |  |.-----.|  |_.--.--.--.-----.----.|  |--."
	echo "         |       ||  -__||   _|  |  |  |  _  |   _||    <"
	echo "         |__|____||_____||____|________|_____|__|  |__|__|"
	echo "                   $langNetCfg"
	echo "--------------------------------------------------------------------"
	echo "$langNetCfgWanMsg"
	echo
	read -r -p "$langNetCfgWanYN [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		wanConfig
		;;
	[nN][oO] | [nN])
		echo "$langNetCfgWanSkip"
		;;
	*)
		wanConfig
		;;
	esac

	echo
	read -r -p "$langNetCfgDelWan6 [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNetCfgDelWan6Set"
		uci delete network.wan6
		;;

	[nN][oO] | [nN])
		echo "$langNetCfgDelWan6NoSet"
		;;

	*)
		echo "$langNetCfgDelWan6Set"
		uci delete network.wan6
		;;
	esac

	echo
	read -r -p "$langNetCfgLanIPv6Assign [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		Lanv6Assign
		;;

	[nN][oO] | [nN])
		echo "$langNetCfgLanIPv6AssignNoSet"
		;;

	*)
		Lanv6Assign
		;;
	esac

	echo
	read -r -p "$langNetCfgLanDHCPLTime [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		dhcpLTime
		;;

	[nN][oO] | [nN])
		echo "$langNetCfgLanDHCPLTimeNoSet"
		;;

	*)
		dhcpLTime
		;;
	esac

	echo
	read -r -p "$langNetCfgFlowOffload [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNetCfgFlowOffloadSet"
		uci set firewall.@defaults[0].flow_offloading=1		
		;;

	[nN][oO] | [nN])
		echo "$langNetCfgFlowOffloadNoSet"
		uci set firewall.@defaults[0].flow_offloading=0
		;;

	*)
		echo "$langNetCfgFlowOffloadSet"
		uci set firewall.@defaults[0].flow_offloading=1		
		;;
	esac

	echo
	echo "$langNetCfgSave"
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

	read -r -p "$langNginxRmRedir2SSLhttp2 [y/N] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNginxRmRedir2SSLhttp2Set"
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 http2 ssl reuseport'
		;;

	[nN][oO] | [nN])
		echo "$langNginxRmRedir2SSLhttp2NoSet"
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 ssl reuseport'
		;;

	*)
		echo "$langNginxRmRedir2SSLhttp2NoSet"
		uci add_list nginx._lan.listen='80 default_server reuseport'
		uci add_list nginx._lan.listen='443 ssl reuseport'
		;;
	esac

	read -r -p "$langNginxRmRedir2SSLIPv6 [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNginxRmRedir2SSLIPv6Set"
		uci add_list nginx._lan.listen='[::]:80 reuseport'
		uci add_list nginx._lan.listen='[::]:443 ssl reuseport'
		;;

	[nN][oO] | [nN])
		echo "$langNginxRmRedir2SSLIPv6NoSet"
		;;

	*)
		echo "$langNginxRmRedir2SSLIPv6Set"
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
	echo "                           |_____| $langNginx"
	echo "--------------------------------------------------------------------"
	read -r -p "$langNginxRmRedir2SSL [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		nginxRemoveRedir2SSL
		;;

	[nN][oO] | [nN])
		echo "$langNginxRmRedir2SSLNoSet"
		;;

	*)
		nginxRemoveRedir2SSL
		;;
	esac

	read -r -p "$langNginxRmLocallyAccess [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langNginxRmLocallyAccessNoSet"
		;;

	[nN][oO] | [nN])
		echo "$langNginxRmLocallyAccessSet"
		uci del_list nginx._lan.include='restrict_locally'
		;;

	*)
		echo "$langNginxRmLocallyAccessNoSet"
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
	echo "                             |__|$langOpkg|_____|"
	echo "--------------------------------------------------------------------"
	read -r -p "$langOpkgChangeFeed [Y/n] " kbdInput
	nowSoftwareFeed=$(grep -rnm 1 "http" /etc/opkg/distfeeds.conf | sed -r 's/.*\/\/(.*)\/releases.*/\1/')
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langOpkgChangeFeedNow$nowSoftwareFeed"
		read -r -p "$langOpkgChangeFeedSet" nSoftwareFeed
		sed -i "s/$nowSoftwareFeed/$nSoftwareFeed/g" /etc/opkg/distfeeds.conf
		;;

	[nN][oO] | [nN])
		echo "$langOpkgChangeFeedNoSet"
		;;

	*)
		echo "$langOpkgChangeFeedNow$nowSoftwareFeed"
		read -r -p "$langOpkgChangeFeedSet" nSoftwareFeed
		sed -i "s/$nowSoftwareFeed/$nSoftwareFeed/g" /etc/opkg/distfeeds.conf
		;;
	esac

	read -r -p "$langOpkgUpdate [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langOpkgUpdateSet"
		opkg update
		;;

	[nN][oO] | [nN])
		echo "$langOpkgUpdateNoset"
		;;

	*)
		echo "$langOpkgUpdateSet"
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
	echo "                        $langzsh"
	echo "--------------------------------------------------------------------"
	read -r -p "$langzshInit [Y/n] " kbdInput
	case $kbdInput in
	[yY][eE][sS] | [yY])
		echo "$langzshInitSet"
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
		;;

	[nN][oO] | [nN])
		echo "$langzshInitNoSet"
		;;

	*)
		echo "$langzshInitSet"
		sh -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ohmyzsh/ohmyzsh@master/tools/install.sh)"
		;;
	esac
}

echo
echo 1. English
echo 2. Simplified Chinese (简体中文)
read -r -p "Please select a language: [1/2] " kbdInput
case $kbdInput in
1)
	English
	;;
2)
	zhCN
	;;
*)
	English
	;;
esac
echo
read -r -p "$langSysPassWd [Y/n] " kbdInput
case $kbdInput in
[yY][eE][sS] | [yY])
	passwd
	;;

[nN][oO] | [nN])
	echo "$langSysPassWdNoSet"
	;;

*)
	passwd
	;;
esac
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
echo "             $langSuccess"
echo "--------------------------------------------------------------------"
