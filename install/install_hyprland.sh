#!/usr/bin/env bash

# ==============================================================================
# TERMINAL COLOR CODES
# ==============================================================================
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}      HYPRLAND ECOSYSTEM INSTALLER (ULTIMATE)       ${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# ------------------------------------------------------------------------------
# PACKAGE LIST FOR A FULL HYPRLAND & HARDWARE EXPERIENCE
# ------------------------------------------------------------------------------
HYPR_PACKAGES=(
    # --- Core Compositor & Portals ---
    "hyprland"                    # The main Wayland compositor
    "xdg-desktop-portal-hyprland"  # Critical for screen sharing
    "qt5-wayland" "qt6-wayland"    # Wayland support for Qt apps

    # --- UI & Customization ---
    "waybar"                      # Your customized status bar
    "rofi-wayland"                # App launcher & Keybindings menu
    "swaync"                      # Notification Center (SwayNC)
    "swww"                        # Animated wallpaper daemon
    "hyprlock" "hypridle"         # Lockscreen and Idle management

    # --- System Utilities & Hardware Control ---
    "kitty"                       # Your preferred terminal emulator
    "polkit-kde-agent"            # Root authentication agent (GUI)
    "wl-clipboard" "cliphist"     # Clipboard management tools
    "hyprshot"                    # High-quality screenshot utility
    "brightnessctl"               # LCD brightness control
    "pavucontrol"                 # Audio/Mic volume control (GUI)
    "network-manager-applet"      # Network/WiFi tray icon
    "blueman"                     # Bluetooth manager
    "udiskie"                     # Auto-mount USB drives
    "libnotify"                   # Library for sending notifications
    "wlsunset"                    # Blue light filter (Night light)
)

# ------------------------------------------------------------------------------
# [1/1] EXECUTE INSTALLATION
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/3] Syncing databases and installing Hyprland ecosystem...${NC}"
sudo pacman -Sy --needed --noconfirm "${HYPR_PACKAGES[@]}"

# ------------------------------------------------------------------------------
# COMPLETION
# ------------------------------------------------------------------------------
echo -e "\n${BLUE}====================================================${NC}"
echo -e "${GREEN}✅ HYPRLAND SYSTEM IS READY!${NC}"
echo -e "${BLUE}====================================================${NC}"
echo -e "${YELLOW}👉 Quick Summary:${NC}"
echo -e "   - Laptop: Acer Nitro 5 (i5 11th + GTX 1650)"
echo -e "   - Core Stack: Hyprland + Waybar + Rofi"
echo -e "   - Dev Tools: System Engineering focus"
echo -e "\n${YELLOW}👉 Next steps:${NC}"
echo -e "1. Reboot your laptop to apply NVIDIA changes."
echo -e "2. Launch Hyprland and enjoy your Deep Navy & Mint setup!"