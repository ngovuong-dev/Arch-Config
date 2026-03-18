#!/usr/bin/env bash

# ==============================================================================
# TERMINAL COLOR CODES
# ==============================================================================
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}    NIRI ECOSYSTEM INSTALLER (SCROLLABLE TILING)    ${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# ------------------------------------------------------------------------------
# PACKAGE LIST FOR A FULL NIRI & HARDWARE EXPERIENCE
# ------------------------------------------------------------------------------
NIRI_PACKAGES=(
    # --- Core Compositor & Wayland Protocols ---
    "niri"                        # Core Wayland compositor (Scrollable tiling)
    "xdg-desktop-portal-gnome"    # Crucial for screen sharing and recording on Niri
    "qt5-wayland" "qt6-wayland"   # Ensures Qt5/Qt6 apps run natively on Wayland

    # --- Thunar File Manager & Enhanced Plugins ---
    "gvfs" "gvfs-mtp"             # Trash support, network mounting, and mobile devices

    # --- Desktop Environment & UI Components ---
    "waybar"                      # Highly customizable status bar
    "wofi"                        # Dynamic application launcher (Matched to your SwayNC config)
    "swaync"                      # Notification daemon with built-in control center
    "swww"                        # High-performance wallpaper daemon
    "swaylock" "swayidle"         # Stable screen locking and idle management for Wayland

    # --- System Infrastructure & Hardware Integration ---
    "foot"                        # GPU-accelerated terminal emulator (Catppuccin configured!)
    "polkit-gnome"                # Provides graphical password prompts (Auth)
    "wl-clipboard" "cliphist"     # System clipboard manager and history
    "grim" "slurp"                # Standard Wayland screenshot tools (Replaces hyprshot)
    "brightnessctl"               # CLI for controlling display brightness
    "pavucontrol"                 # GUI for PulseAudio/Pipewire volume management
    "network-manager-applet"      # System tray icon for WiFi/Network control
    "blueman"                     # GUI for managing Bluetooth connections
    "libnotify"                   # Core library for sending desktop notifications
    "wlsunset"                    # Night light/Blue light filter for Wayland
)

# ------------------------------------------------------------------------------
# EXECUTE INSTALLATION
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/3] Syncing repositories and deploying ecosystem...${NC}"
sudo pacman -Sy --needed --noconfirm "${NIRI_PACKAGES[@]}"

# ------------------------------------------------------------------------------
# COMPLETION SUMMARY
# ------------------------------------------------------------------------------
echo -e "\n${BLUE}====================================================${NC}"
echo -e "${GREEN}✅ NIRI SYSTEM IS FULLY EQUIPPED!${NC}"
echo -e "${BLUE}====================================================${NC}"
echo -e "${YELLOW}👉 System Profile:${NC}"
echo -e "   - Device: Laptop (Core i5 Gen 11 + GTX 1650)"
echo -e "   - Focus: Systems Engineering & Data Science"
echo -e "   - Theme: Catppuccin Mocha Lavender"

echo -e "\n${YELLOW}👉 Important Post-Install Steps:${NC}"
echo -e "1. Reboot to ensure NVIDIA DRM modeset is fully active for Niri."
echo -e "2. Run 'nwg-look' to apply your GTK theme and icons."
echo -e "3. Enjoy the infinite scrollable workflow!${NC}"
