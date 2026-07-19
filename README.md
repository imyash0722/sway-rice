<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=700&size=32&duration=3000&pause=1000&color=7FC8FF&center=true&vCenter=true&width=600&lines=sway-rice;A+SwayFX+Wayland+Desktop+Rice" alt="sway-rice" />

<br/>

![SwayFX](https://img.shields.io/badge/SwayFX-git-7fc8ff?style=for-the-badge&logo=wayland&logoColor=white)
![Waybar](https://img.shields.io/badge/Waybar-customised-ffc87f?style=for-the-badge)
![Theme](https://img.shields.io/badge/Theme-Tokyo%20Night-1a1b26?style=for-the-badge&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-ZSH-89b4fa?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Distro](https://img.shields.io/badge/Distro-CachyOS-00b4d8?style=for-the-badge&logo=archlinux&logoColor=white)

*A clean, dark Wayland desktop built on SwayFX with animated wallpapers, a polished Waybar, and Rofi launcher — all tuned to Tokyo Night.*

</div>

---

## ✨ Features

- 🪟 **SwayFX** — Sway fork with window animations, blur, corner radius, and shadows
- 🎨 **Tokyo Night** colour scheme across all apps
- 🖥️ **Waybar** — Custom status bar with interactive tray modules (Bluetooth, Network, Volume, Battery)
- 🚀 **Rofi** — App launcher with a squared-nord dark theme
- 📸 **Satty** — Screenshot annotation tool with auto-save and clipboard copy
- 🎵 **Cava** — Audio spectrum visualizer in your terminal
- 🐾 **Foot** — Fast, GPU-rendered Wayland terminal
- ⭐ **Starship** — Beautiful cross-shell prompt
- 🔒 **Swaylock** — Lockscreen with wallpaper support
- 📦 **GNU Stow ready** — Drop-in structure for easy symlink management

---

## 📸 Screenshots

> *Add your screenshots to `.github/screenshots/` and they'll appear here.*

| Desktop | Waybar | Rofi |
|:---:|:---:|:---:|
| *(coming soon)* | *(coming soon)* | *(coming soon)* |

---

## 📦 Dependencies

Install everything with your AUR helper:

```bash
paru -S swayfx-git waybar fuzzel foot fastfetch ly networkmanager \
        bluetui pipemixer satty dolphin btop neovim zsh \
        firefox-developer-edition konsole rofi-wayland \
        cava starship swaylock-effects grim slurp wl-clipboard \
        mpvpaper imagemagick jq cliphist wl-paste dunst
```

### 🔗 Apps hardcoded into shortcuts

| App | Shortcut | Purpose |
|-----|----------|---------|
| `firefox-developer-edition` | `Mod+Shift+E` | Default browser |
| `dolphin` + `konsole` | `Mod+E` | File manager (with embedded terminal) |
| `foot` | `Mod+Return` | Default terminal |
| `nmtui` | Waybar click | Network manager |
| `bluetui` | Waybar click | Bluetooth manager |
| `pipemixer` | Waybar click | Volume control |
| `satty` | `Mod+Shift+S` | Screenshot annotation |

---

## 🚀 Installation

### Option 1 — Manual

```bash
# 1. Clone the repo
git clone https://github.com/imyash0722/sway-rice.git ~/sway-rice
cd ~/sway-rice

# 2. Copy user configs
cp -r .config/* ~/.config/
cp .zshrc ~/.zshrc

# 3. Copy system configs (requires sudo)
sudo cp -r etc/ly/* /etc/ly/

# 4. Extract Neovim config
tar -xzf ~/.config/nvim.tar.gz -C ~/.config/
rm ~/.config/nvim.tar.gz

# 5. Start Sway
exec sway
```

### Option 2 — GNU Stow (Recommended)

```bash
git clone https://github.com/imyash0722/sway-rice.git ~/sway-rice
cd ~/sway-rice
stow .
```

---

## 🌳 Structure

```
sway-rice/
├── .zshrc                    # ZSH shell config
├── .gitignore
├── KEYBINDS.md               # Full keybind reference
├── README.md
├── .config/
│   ├── sway/                 # Window manager (keybinds, autostart, scripts)
│   ├── waybar/               # Status bar (modules, CSS, scripts)
│   ├── rofi/                 # App launcher theme and config
│   ├── foot/                 # Terminal emulator (Tokyo Night theme)
│   ├── dunst/                # Notification daemon
│   ├── swaylock/             # Lock screen config
│   ├── cava/                 # Audio visualizer
│   ├── mpv/                  # Media player config
│   ├── btop/                 # System monitor themes
│   ├── fastfetch/            # System info (ASCII logo + layout)
│   ├── satty/                # Screenshot annotation (auto-save/copy)
│   ├── zsh/                  # Modular ZSH (aliases, plugins via antigen)
│   ├── zshrc.d/              # Auto-sourced shell scripts
│   └── starship.toml         # Shell prompt config
├── etc/
│   ├── fstab                 # Mount configs (NTFS dirty flag fix)
│   ├── ly/                   # Ly TUI display manager config + animations
│   ├── default/limine        # Bootloader kernel params (dual-monitor fix)
│   └── systemd/system/       # Systemd service overrides
└── Pictures/
    └── Wallpapers/           # Wallpapers (gitignored — store locally)
```

---

## ⌨️ Key Bindings

See [`KEYBINDS.md`](./KEYBINDS.md) for the full keybind reference.

| Action | Shortcut |
|--------|----------|
| Terminal | `Mod+Return` |
| App Launcher | `Mod+D` |
| Browser | `Mod+Shift+E` |
| File Manager | `Mod+E` |
| Screenshot | `Mod+Shift+S` |
| Color Picker | `Mod+Shift+P` |
| Lock Screen | `Mod+Shift+Q` → Lock |
| Reload Config | `Mod+Shift+R` |

---

## 🎨 Colour Palette

| Role | Hex |
|------|-----|
| Background | `#1a1b26` |
| Foreground | `#c0caf5` |
| Blue | `#7fc8ff` |
| Orange | `#ffc87f` |
| Selection | `#2a2c3e` |

---

<div align="center">

*Original Sway dotfiles base by [jim-fx](https://github.com/jim-fx/.dotfiles).*<br>
*Made with 💙 on CachyOS*

</div>
