#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_wallpaper>"
    exit 1
fi

WALLPAPER=$(realpath "$1")

# Apply wallpaper in Sway config
echo "Updating Sway wallpaper..."
if [[ "$WALLPAPER" == *.gif ]]; then
    sed -i "s|exec_always pkill mpvpaper.*|exec_always pkill mpvpaper; mpvpaper -o \"no-audio loop panscan=1.0\" '*' $WALLPAPER|" ~/.config/sway/config
    sed -i "s|output \* bg .*|# output * bg $WALLPAPER fill|" ~/.config/sway/config
else
    sed -i "s|output \* bg .*|output * bg $WALLPAPER fill|" ~/.config/sway/config
    sed -i "s|exec_always pkill mpvpaper.*|# exec_always pkill mpvpaper; mpvpaper -o \"no-audio loop panscan=1.0\" '*' $WALLPAPER|" ~/.config/sway/config
fi

# Reload everything
echo "Applying changes..."
swaymsg reload

echo "Done! Wallpaper applied."
