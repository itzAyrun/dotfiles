#!/bin/bash

# Define options
options="Shutdown\nRestart\nSleep\nLogout\nCancel"

# Show options in Rofi Menu
selected=$(echo -e "$options" | rofi -dmenu -p "Power Menu:")

# Handle selection
case "$selected" in
    Shutdown) systemctl poweroff ;;
    Restart) systemctl reboot ;;
    Logout) pkill -KILL -u $USER ;;
    Sleep) systemctl suspend ;;
    *)
        # Do nothing if "Cancel" or invalid option selected
        exit 0
        ;;
esac
