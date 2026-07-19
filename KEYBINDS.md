  bindsym --to-code $mod+space exec $quickmenu
  bindsym --to-code $mod+q kill
  bindsym --to-code $mod+Shift+q exec ~/.config/sway/scripts/power.sh
  bindsym --to-code $mod+Return exec $term
  bindsym --to-code $mod+Shift+Return exec $create_floating $term
  bindsym --to-code $mod+e exec $explorer
  bindsym --to-code $mod+Comma exec $settings
  bindsym --to-code $mod+b exec $browser
  bindsym --to-code $mod+n exec $quick_notes
  bindsym --to-code $mod+Shift+w exec $term -e nmtui
  bindsym --to-code $mod+Shift+b exec $bluetooth_mngr
  bindsym --to-code $mod+Shift+Comma exec $config_editor
  bindsym --to-code $mod+p exec $password_mngr
  bindsym --to-code $mod+Shift+p exec grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:- | tail -n 1 | cut -d ' ' -f 4 | wl-copy
  bindsym --to-code $mod+v exec cliphist list | rofi -dmenu -p "Clipboard" | cliphist decode | wl-copy
  bindsym --to-code $mod+Shift+c reload
  bindsym --locked --no-repeat XF86AudioMute exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
  bindsym --locked XF86AudioMicMute exec ~/.config/sway/scripts/mic-debounce
  bindsym --locked XF86AudioNext exec playerctl next
  bindsym --locked XF86AudioPrev exec playerctl previous
  bindsym --locked XF86AudioPlay exec playerctl play-pause
  bindsym --locked XF86AudioLowerVolume exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
  bindsym --locked XF86AudioRaiseVolume exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
  bindsym XF86MonBrightnessUp exec brightnessctl set +5%
  bindsym XF86MonBrightnessDown exec brightnessctl set 5%-
  bindsym --to-code $mod+$left focus left
  bindsym --to-code $mod+$down focus down
  bindsym --to-code $mod+$up focus up
  bindsym --to-code $mod+$right focus right
  bindsym --to-code $mod+Left focus left
  bindsym --to-code $mod+Down focus down
  bindsym --to-code $mod+Up focus up
  bindsym --to-code $mod+Right focus right
  bindsym --to-code $mod+Shift+$left move left
  bindsym --to-code $mod+Shift+$down move down
  bindsym --to-code $mod+Shift+$up move up
  bindsym --to-code $mod+Shift+$right move right
  bindsym --to-code $mod+Control+Left move workspace to output left
  bindsym --to-code $mod+Control+Right move workspace to output right
  bindsym --to-code $mod+Control+Up move workspace to output up
  bindsym --to-code $mod+Control+Down move workspace to output down
  bindsym --to-code $mod+Shift+Left move left
  bindsym --to-code $mod+Shift+Down move down
  bindsym --to-code $mod+Shift+Up move up
  bindsym --to-code $mod+Shift+Right move right
  bindsym --to-code $mod+1 workspace $ws1
  bindsym --to-code $mod+2 workspace $ws2
  bindsym --to-code $mod+3 workspace $ws3
  bindsym --to-code $mod+4 workspace $ws4
  bindsym --to-code $mod+5 workspace number 5
  bindsym --to-code $mod+6 workspace number 6
  bindsym --to-code $mod+7 workspace number 7
  bindsym --to-code $mod+8 workspace number 8
  bindsym --to-code $mod+9 workspace number 9
  bindsym --to-code $mod+0 workspace number 10
  bindsym --to-code $mod+Shift+1 move container to workspace $ws1
  bindsym --to-code $mod+Shift+2 move container to workspace $ws2 
  bindsym --to-code $mod+Shift+3 move container to workspace $ws3 
  bindsym --to-code $mod+Shift+4 move container to workspace $ws4 
  bindsym --to-code $mod+Shift+5 move container to workspace number 5
  bindsym --to-code $mod+Shift+6 move container to workspace number 6
  bindsym --to-code $mod+Shift+7 move container to workspace number 7
  bindsym --to-code $mod+Shift+8 move container to workspace number 8
  bindsym --to-code $mod+Shift+9 move container to workspace number 9
  bindsym --to-code $mod+Shift+0 move container to workspace number 10
  bindsym --to-code $mod+w exec $toggle_layout
  bindsym --to-code $mod+g exec $toggle_gaps
  bindsym --to-code $mod+Shift+g exec $toggle_bar
  bindsym --to-code $mod+f fullscreen
  bindsym --to-code $mod+Shift+space floating toggle
  bindsym --to-code $mod+s exec $screenshot
  bindsym --to-code $mod+Shift+s exec $screenclip
  bindsym --to-code $mod+r exec obs
  bindsym --to-code $mod+Shift+r exec nautilus /home/pineapple
  bindsym --to-code $mod+Control+s exec $windowshot
  bindsym --to-code $mod+Shift+i exec $debug_window
  bindsym --to-code --no-warn $mod+l exec $lock_screen 
  bindsym --to-code $mod+c exec $calculator
  bindsym --to-code $mod+Shift+minus move scratchpad
  bindsym --to-code $mod+minus scratchpad show
  bindsym --to-code $left resize shrink width 100px
  bindsym --to-code $down resize grow height 100px
  bindsym --to-code $up resize shrink height 100px
  bindsym --to-code $right resize grow width 100px
  bindsym --to-code Shift+$left resize shrink width 20px
  bindsym --to-code Shift+$down resize grow height 20px
  bindsym --to-code Shift+$up resize shrink height 20px
  bindsym --to-code Shift+$right resize grow width 20px
  bindsym --to-code Left resize shrink width 10px
  bindsym --to-code Down resize grow height 10px
  bindsym --to-code Up resize shrink height 10px
  bindsym --to-code Right resize grow width 10px
  bindsym --to-code Return mode "default"
  bindsym --to-code Escape mode "default"
