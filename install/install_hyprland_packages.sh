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
echo -e "${GREEN}  PURE PACMAN HYPRLAND CORE AUTO-INSTALLER (ARCH)   ${NC}"
echo -e "${BLUE}====================================================${NC}\n"
sudo pacman -Syu
# ------------------------------------------------------------------------------
# 1. LIST OF PACKAGES TO INSTALL
# All packages are now officially available in Arch Linux extra/core repos!
# ------------------------------------------------------------------------------
HYPR_PACKAGES=(
    # --- Hyprland Core & Wayland Support ---
    "hyprland"                      # Main Wayland compositor
    "xdg-desktop-portal-hyprland"   # Screen sharing & portals
    "qt5-wayland"                   # Qt5 Wayland support
    "qt6-wayland"                   # Qt6 Wayland support

    # --- Desktop UI Components ---
    "waybar"                        # Status bar
    "rofi-wayland"                  # Application launcher
    "swaync"                        # Notification daemon
    "swww"                          # Wallpaper daemon
    "hyprlock"                      # Official lock screen
    "hypridle"                      # Idle manager

    # --- System Utilities & Hardware Control ---
    "kitty"                         # Default terminal emulator
    "polkit-kde-agent"               # Root authentication agent
    "wl-clipboard"                  # Clipboard utility
    "cliphist"                      # Clipboard history
    "hyprshot"                      # Screenshot utility
    "brightnessctl"                 # Monitor brightness control
    "pavucontrol"                       # Audio/Mic volume control
    "network-manager-applet"        # Network/WiFi applet
    "blueman"                       # Bluetooth manager
)

# ------------------------------------------------------------------------------
# 2. EXECUTE BATCH INSTALLATION
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/2] Syncing databases and installing the entire Hyprland ecosystem...${NC}"
echo -e "Using official pacman repositories. No AUR helper needed.\n"

# Update package databases and install everything in one go
sudo pacman -Sy --needed --noconfirm "${HYPR_PACKAGES[@]}"

# ------------------------------------------------------------------------------
# 3. COMPLETION
# ------------------------------------------------------------------------------
echo -e "\n${BLUE}====================================================${NC}"
echo -e "${GREEN}[2/2] ✅ INSTALLATION COMPLETE!${NC}"
echo -e "${BLUE}====================================================${NC}"
echo -e "${YELLOW}👉 All core components have been successfully installed natively.${NC}"
echo -e "${YELLOW}👉 If you are currently in a tty (black screen), type 'Hyprland' to launch your desktop.${NC}"
