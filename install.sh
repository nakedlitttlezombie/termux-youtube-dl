#!/bin/bash

BLUE='\e[34m'
NC='\e[0m'
WORKING_DIR=$(echo $(pwd))
YOUTUBEDL_OUTPUT_FOLDER="${WORKING_DIR}/storage/shared/Youtube-DL"
YOUTUBEDL_CONFIG_FOLDER="${WORKING_DIR}/.config/youtube-dl/"
TERMUXURLOPENER_CONFIG_FOLDER="${WORKING_DIR}/bin/"

echo "Hi, This script setup an environment to download various videos from various apps"
sleep 1
echo -e "\n\n${BLUE}Requirements :"
echo -e "${NC}    1. Allow storage access to Termux"
echo -e "${NC}    2. A working internet connection.\n\n"
read -p "When you are ready just press enter:"

# Basic setup
termux-setup-storage
sleep 2
apt-get -y install python
pip install youtube-dl
mkdir -p $YOUTUBEDL_OUTPUT_FOLDER
mkdir -p $YOUTUBEDL_CONFIG_FOLDER
mkdir -p $TERMUXURLOPENER_CONFIG_FOLDER
# Download setup & config file
curl -L https://raw.githubusercontent.com/OzakIOne/termux-youtube-dl/v1.0.0/.ytdl.conf > "${YOUTUBEDL_CONFIG_FOLDER}/config"
curl -L https://raw.githubusercontent.com/OzakIOne/termux-youtube-dl/v1.0.0/share2youtubedl.sh > "${TERMUXURLOPENER_CONFIG_FOLDER}/termux-url-opener"

echo -e "${BLUE}Congratulations!!! Your setup is complete.\n\n"
read -p "When you are ready just press enter"