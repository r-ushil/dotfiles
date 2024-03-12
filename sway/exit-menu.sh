#!/bin/bash

# Define options
options="suspend\nlock\nshutdown\nreboot\nexit sway"

# Show the menu
selected=$(echo -e $options | wofi --show dmenu --width 300 --height 300 --lines 6)

# Execute the selected option
case $selected in
    "suspend")
        systemctl suspend && swaylock -c 050505 
        ;;
    "lock")
        swaylock -c 050505
        ;;
    "shutdown")
        systemctl -i poweroff
        ;;
    "reboot")
        systemctl -i reboot
        ;;
    "exit sway")
        swaymsg exit
        ;;
esac

