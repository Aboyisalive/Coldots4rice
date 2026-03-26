# 🚀 L€yzS Arch + Hyprland Dotfiles (V1.0) 🏁

### 🇹🇷 TÜRKÇE AÇIKLAMA

**🖼️ DUVAR KAĞIDI YÖNETİMİ:**
1. **Statik Seçim (WIN + W):** Menüden resim seçer. Resimlerinizi `~/.config/wallpapers` içine atın.
2. **Rastgele (WIN + R):** Klasörden rastgele bir resim seçer.
3. **Canlı Arka Plan Başlat (WIN + ALT + K):** `.mp4` videoları başlatır. Videolarınızı `~/.config/Live Wallpapers` içine atın.
4. **Canlı Arka Plan Değiştir (WIN + K):** Hareketli duvar kağıtları arasında pürüzsüz geçiş yapar.
5. **Mod Değişimi:** Hareketli moddayken `WIN + W` ile bir resim seçerseniz, video oynatıcı otomatik kapanır.

**🖥️ MONİTÖR AYARLARI (ÖNEMLİ):**
Bu config varsayılan olarak **DP-1** monitör için ayarlanmıştır. Eğer ekranınız gelmezse veya Waybar pencerelerin üstünde kalıyorsa:
1. Terminale `hyprctl monitors` yazıp kendi monitör isminizi (Örn: `HDMI-A-1`) öğrenin.
2. 
3. `~/.config/hypr/configs/monitors.conf` dosyasını açıp `DP-1` yazan yerleri kendi isminizle değiştirin.

**⌨️ TEMEL KISAYOLLAR:**
* 🔒 **Ekran Kilidi:** `WIN + L` | 🔍 **Uygulama Menüsü:** `WIN + A`
* ❌ **Pencere Kapat:** `WIN + Q` | 🛸 **Serbest Pencere:** `WIN + F`
* 🔢 **Çalışma Alanları:** `WIN + 1/2/3/4` | 🚚 **Pencere Taşıma:** `WIN + SHIFT + (Sayı)`

---

### 🇺🇸 ENGLISH DESCRIPTION

**🖼️ WALLPAPER MANAGEMENT:**
1. **Static Picker (WIN + W):** Pick an image from the menu. Put yours in `~/.config/wallpapers`.
2. **Randomizer (WIN + R):** Picks a random image from the folder.
3. **Start Live Wallpaper (WIN + ALT + K):** Starts `.mp4` videos. Put yours in `~/.config/Live Wallpapers`.
4. **Switch Live Wallpaper (WIN + K):** Smoothly switches between animated wallpapers.
5. **Switching Modes:** Selecting a static image via `WIN + W` will automatically close the video player.

**🖥️ MONITOR SETTINGS (IMPORTANT):**
This config is set for **DP-1** by default. If your screen doesn't show up or Waybar overlaps:
1. Type `hyprctl monitors` in terminal to find your monitor name (e.g., `HDMI-A-1`).
2. Open `~/.config/hypr/configs/monitors.conf` and replace `DP-1` with your monitor name.

**⌨️ CORE KEYBINDINGS:**
* 🔒 **Lock Screen:** `WIN + L` | 🔍 **App Launcher:** `WIN + A`
* ❌ **Close Window:** `WIN + Q` | 🛸 **Floating Mode:** `WIN + F`
* 🔢 **Workspaces:** `WIN + 1/2/3/4` | 🚚 **Move Window:** `WIN + SHIFT + (Number)`
