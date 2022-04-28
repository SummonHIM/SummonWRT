echo --- Setup Env ---
sudo apt-get update
sudo apt-get install build-essential ccache ecj fastjar file g++ gawk gettext git java-propose-classpath libelf-dev libncurses5-dev libncursesw5-dev libssl-dev mkisofs python python2.7-dev python3 unzip wget python-distutils-extra python3-setuptools python3-dev rsync subversion swig time xsltproc zlib1g-dev -y
sudo apt-get autoremove -y
sudo timedatectl set-timezone "Asia/Shanghai"

echo 
echo --- Clone repo ---
df -hT $PWD
git clone https://git.openwrt.org/openwrt/openwrt.git -b v21.02.3 openwrt
if [ -d "openwrt" ]; then
    cd openwrt
    wget https://raw.githubusercontent.com/SummonHIM/SummonWRT/master/x86_64.config -O .config
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
echo make -j $(($(nproc)+1)) V=s world
