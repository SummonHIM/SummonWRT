#!/bin/sh
# Useage: sh -c "$(curl -fsSL https://raw.githubusercontent.com/SummonHIM/SummonWrt/master/Scripts/local-build-x86-64.sh)"

SCRIPT_REPO="https://github.com/SummonHIM/SummonWrt.git"
SCRIPT_BRANCH="master"
OP_REPO_URL="https://git.openwrt.org/openwrt/openwrt.git"
OP_REPO_BRANCH="v22.03.0-rc4"
TZ="Asia/Shanghai"

echo --- Setup Env ---
sudo apt-get update
sudo apt-get install -y $(curl -fsSL https://raw.githubusercontent.com/SummonHIM/SummonWrt/master/Scripts/build-ubuntu-2204)
sudo apt-get autoremove -y
sudo timedatectl set-timezone "$TZ"

echo 
echo --- Clone repo ---
df -hT $PWD
git clone $OP_REPO_URL -b $OP_REPO_BRANCH openwrt
if [ -d "openwrt" ]; then
    cd openwrt
else
    exit
fi

echo 
echo --- Load custom feeds ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/SummonHIM/SummonWRT/master/diy-part1.sh)"

echo 
echo --- Update and install feeds ---
./scripts/feeds update -a
./scripts/feeds install -a

echo 
echo --- Modify custom feeds ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/SummonHIM/SummonWRT/master/diy-part2.sh)"

echo 
echo --- Download package ---
echo make defconfig download -j $(($(nproc)+1))

echo 
echo --- Compile the firmware ---
echo "$(($(nproc)+1)) thread compile"
read -p "Press any key to continue or Ctrl + C to quit ... " quit
make -j $(($(nproc)+1)) V=s world