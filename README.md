🚀 By-LeyzS Arch + Hyprland Dotfiles (V1.0) 🏁
🚨 IMPORTANT: MUST INSTALL FIRST

👉 Before copying the files, install these packages so the system works with ALL features (colors, notifications, wallpapers, etc.)

⚙️ Core Components & Visuals

sudo pacman -S hyprland waybar wofi wlogout kitty fastfetch swww swaync hyprlock pywal16 mpvpaper grim slurp wl-clipboard

🔤 Fonts & Tools

yay -S matugen-bin ttf-jetbrains-mono-nerd

🖼️ WALLPAPER MANAGEMENT

✨ Static Picker (WIN + W)
→ Pick an image from menu
→ Put wallpapers in: ~/.config/wallpapers

🎲 Randomizer (WIN + R)
→ Picks a random wallpaper automatically

🎥 Start Live Wallpaper (WIN + ALT + K)
→ Starts .mp4 wallpapers
→ Folder: ~/.config/Live Wallpapers

🔁 Switch Live Wallpaper (WIN + K)
→ Smoothly switches between videos

⚡ Mode Switching
→ Using WIN + W automatically stops video wallpaper

🖥️ MONITOR SETTINGS (VERY IMPORTANT)

⚠️ Default monitor = DP-1

If something looks broken:

👉 Screen black OR Waybar bug

✔️ Fix:
Run: hyprctl monitors
Find your monitor name (example: HDMI-A-1)
Open:
~/.config/hypr/configs/monitors.conf
Replace:
DP-1 → YOUR MONITOR NAME
⌨️ KEYBINDINGS

🔒 WIN + L → Lock Screen
🔍 WIN + A → App Launcher
❌ WIN + Q → Close Window
🛸 WIN + F → Floating Mode

🔢 WIN + 1 / 2 / 3 / 4 → Workspaces
🚚 WIN + SHIFT + Number → Move Window

🚀 INSTALLATION

👉 Follow these steps IN ORDER

📥 1. Clone the Repository

git clone https://github.com/L3yzs/By-LeyzS-Arch-Hyprland-Dotfiles.git

cd By-LeyzS-Arch-Hyprland-Dotfiles

📂 2. Copy Config Files

👉 Moves everything into your .config folder

cp -r .config/ ~/.config/*

🪄 3. Fix User Paths (IMPORTANT)

👉 This replaces leyzs → your username automatically

find ~/.config/ -type f -exec sed -i "s/leyzs/$(whoami)/g" {} +

⚠️ NOTE (READ THIS)

✨ This command will:

Scan all .config files
Fix paths automatically
Ensure wallpapers & themes work correctly
