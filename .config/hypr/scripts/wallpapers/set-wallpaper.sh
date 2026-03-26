#!/bin/bash
# * 🌌 L€yzS Ricing - Static Wallpaper Selector 🌌
# 🛠️  Architected by L€yzS
# 🖼️  Seamless transition with 270Hz fluidity and global color sync.
#
# [TR] Bu script, statik resimler arasında Wofi ile seçim yapmanı ve renkleri eşitlemeni sağlar.
# [EN] This script allows choosing static wallpapers via Wofi and synchronizes system colors.

set -eu

# [TR] Wallpaper arşivi / [EN] Wallpaper directory
WALL_DIR="$HOME/.config/wallpapers"

# 🔍 [TR] WOFI: Klasördeki resimleri listele ve kullanıcıya seçtir.
# 🔍 [EN] WOFI: List images in the folder and let the user decide.
FILE_LIST=$(find "$WALL_DIR" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -printf "%f\n")
SELECTED_FILE=$(echo "$FILE_LIST" | wofi --dmenu --style "$HOME/.config/wofi/style.css" --prompt "Select Still Wallpaper")

# [TR] Eğer canlı duvar kağıdı açıksa durdur / [EN] Stop live wallpaper if active
pkill mpvpaper || true

# [TR] Seçim yoksa güvenli çıkış / [EN] Safety exit if no selection
[ -z "$SELECTED_FILE" ] && exit 1
WALL="$WALL_DIR/$SELECTED_FILE"

# 🖼️ 1️⃣ [TR] SWWW ANIMATION: 270Hz ile göz yormayan, pürüzsüz geçiş.
# 🖼️ 1️⃣ [EN] SWWW ANIMATION: Smooth transition at 270Hz for maximum fluidity.
swww img "$WALL" --transition-type fade --transition-step 255 --transition-fps 270 --transition-duration 0.70

# 🛠️ 2️⃣ [TR] L€yzS SİSTEM SENKRONİZASYONU (Arka Plan İşlemi)
# 🛠️ 2️⃣ [EN] L€yzS SYSTEM SYNC (Background Process)
(
    # [TR] SwayNC: Bildirim merkezini yeni temaya hazırla.
    # [EN] SwayNC: Prepare the notification center for the new theme.
    if command -v swaync-client >/dev/null 2>&1; then
        swaync-client -R && swaync-client -rs
    fi

    sleep 0.001

    # [TR] PYWAL: Renk paletini resimden çek ve sisteme dağıt.
    # [EN] PYWAL: Extract the color palette and distribute it globally.
    if command -v wal >/dev/null 2>&1; then
        wal -i "$WALL" -n -q -t -e
        # [TR] Evrensel cache yolu / [EN] Universal cache path
        cp "$WALL" "$HOME/.cache/current_wallpaper.png"
    fi

    # [TR] Final Dokunuş: Her şeyi senkronize et / [EN] Final Touch: Sync everything.
    if command -v swaync-client >/dev/null 2>&1; then
        swaync-client -R && swaync-client -rs
    fi
) &
