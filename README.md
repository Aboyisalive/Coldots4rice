🚀 By-LeyzS Arch + Hyprland Dotfiles (V1.0) 🏁
🚨 IMPORTANT: MUST INSTALL FIRST
Before copying the files, install these packages from your terminal so the system works with all its features:


# Core Components & Visuals
sudo pacman -S hyprland waybar wofi wlogout kitty fastfetch swww swaync hyprlock pywal16 mpvpaper grim slurp wl-clipboard

# Fonts & Tools
yay -S matugen-bin ttf-jetbrains-mono-nerd
🖼️ WALLPAPER MANAGEMENT
Static Picker (WIN + W): Open the menu to pick an image. Place your wallpapers in ~/.config/wallpapers.

Randomizer (WIN + R): Automatically picks a random image from your folder.

Start Live Wallpaper (WIN + ALT + K): Starts .mp4 video wallpapers. Place your videos in ~/.config/Live Wallpapers.

Switch Live Wallpaper (WIN + K): Smoothly cycles through your animated wallpapers.

Mode Switching: Selecting a static image via WIN + W will automatically stop the video player.

🖥️ MONITOR SETTINGS (IMPORTANT)
This config is set for DP-1 by default. If your screen is black or the Waybar overlaps:

Type hyprctl monitors in your terminal to find your monitor name (e.g., HDMI-A-1).

Open ~/.config/hypr/configs/monitors.conf and replace DP-1 with your actual monitor name.

⌨️ KEYBINDINGS
🔒 Lock Screen: WIN + L

🔍 App Launcher: WIN + A

❌ Close Window: WIN + Q

🛸 Floating Mode: WIN + F

🔢 Workspaces: WIN + 1/2/3/4

🚚 Move Window: WIN + SHIFT + (Number)

🚀 Installation
Follow these steps in order to set up the system:

1. Clone the Repository


git clone https://github.com/L3yzs/By-LeyzS-Arch-Hyprland-Dotfiles.git
cd By-LeyzS-Arch-Hyprland-Dotfiles
2. Copy Config Files
This command moves everything from the repo to your own .config folder:


cp -r .config/* ~/.config/
3. Fix User Paths (The Magic Command) 🪄
Run this to automatically replace the username leyzs with your own system username:


find ~/.config/ -type f -exec sed -i "s/leyzs/$(whoami)/g" {} +
Note: This command will scan all files inside .config and fix the paths so your wallpapers and themes load correctly. ✨
