#!/bin/bash
options="Lock\nLogout\nSuspend\nReboot\nShutdown"
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power" -lines 5)

case "$chosen" in
    Lock) swaylock ;;
    Logout) swaymsg exit ;;
    Suspend) systemctl suspend ;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
