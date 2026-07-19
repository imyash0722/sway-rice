#!/bin/bash
case "$1" in
    pre)
        # Bring down the interface and unload the driver before sleep
        ip link set wlan0 down 2>/dev/null
        modprobe -r mt7921e 2>/dev/null
        ;;
    post)
        # Reload the driver after waking up
        modprobe mt7921e
        ;;
esac
