#!/bin/sh

# Get the wireless interface name
WIFI_INTERFACE=$(nmcli device status | grep wifi | awk '{print $1}' | head -n 1)

# Add the network connection using the detected interface
nmcli con add type wifi con-name "Imperial-WPA" ifname "${WIFI_INTERFACE}" ssid "Imperial-WPA" \
wifi-sec.key-mgmt wpa-eap 802-1x.eap peap 802-1x.phase2-auth mschapv2 \
802-1x.identity "myusername" 802-1x.password "mypassword"

