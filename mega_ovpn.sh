#!/usr/bin/env bash

## Download open vpn files from provider (e.x. protonvpn.com)
## Move mega_ovpn.sh into the folder containing the open vpn files
## run the script

function ovpn() {
for f in ./* ; do
	nmcli connection import type openvpn file $f > /dev/null 2>&1
	CON="${f##*/}"
	nmcli connection modify "${CON:: -5}" +vpn.data username= "$(read -p 'Username: ')" ; nmcli connection modify "${CON:: -5}" +vpn.secrets password= "$(read -p 'Password: ')" ; nmcli connection modify "${CON:: -5}" +ipv4.dns 1.1.1.1 ; nmcli connection modify "${CON:: -5}" +ipv6.dns 2606:4700:4700::1111 ; nmcli connection modify "${CON:: -5}" -vpn.data 'comp-lzo' +vpn.data 'compress=yes'
done
}

ovpn
