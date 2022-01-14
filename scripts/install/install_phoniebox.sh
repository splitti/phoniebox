# Global Informations
BASE_DIR_REPO=/usr/local/phoniebox/
BASE_DIR=/phoniebox/
CONFIG_DIR=${BASE_DIR}/config/
MEDIA_DIR=${BASE_DIR}/media/
GIT_URL="https://github.com/splitti/phoniebox"

# Add Sources
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list

# Installation
apt update
apt install lighttpd php-common php-cgi php
apt install python3 python3-dev python3-pip python3-mutagen python3-gpiozero python3-spidev
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
apt install mpd mpg123 
apt install samba  
apt install mopidy mopidy-mpd mopidy-local mopidy-spotify

python3 -m pip install Mopidy-Iris


# Clone Repository
git clone ${GIT_URL} ${BASE_DIR}

# OnOffShim
curl https://get.pimoroni.com/onoffshim | bash