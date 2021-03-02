#!/bin/bash

version=$(curl -s https://api.github.com/repos/boypt/simple-torrent/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')

wget -q https://github.com/boypt/simple-torrent/releases/download/"$version"/cloud-torrent_linux_amd64.gz
gzip -d cloud-torrent_linux_amd64.gz
chmod +x cloud-torrent_linux_amd64
./cloud-torrent_linux_amd64
