#!/usr/bin/env bash

# ==============================================================================
# TERMINAL COLOR CODES
# ==============================================================================
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}    ULTIMATE LIGHTWEIGHT TOOLS INSTALLER (ARCH)     ${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# ------------------------------------------------------------------------------
# THE ULTIMATE PACKAGE LIST (Optimized for Acer Nitro 5)
# ------------------------------------------------------------------------------
ESSENTIAL_TOOLS=(
    # 1. System Monitors (CLI-based, Very Pro)
    "fastfetch"             # Blazing fast system info script
    "btop"                  # Modern & sleek resource monitor
    "nvtop"                 # GPU Monitor (Essential for your GTX 1650)

    # 2. File & Disk Management
    "yazi"                  # Terminal file manager with image previews
    "dolphin"               # Powerhouse GUI file manager
    "ark"                   # Compression tool (integrated with Dolphin)
    "partitionmanager"      # KDE's alternative to GParted for disk management
    "unzip" "p7zip"         # Essential archive utilities

    # 3. Media & Productivity (Wayland Native)
    "kate"                  # Advanced text editor (Your primary notepad)
    "kcalc"                 # Scientific calculator for Linear Algebra
    "kclock"                # Alarms, Timers, and World Clock
    "gwenview"              # Fast image viewer
    "elisa"                 # Modern & clean music player
    "mpv"                   # Best minimalist video player for Wayland
    "krecorder"             # Clean & simple audio recording

    # 4. Desktop UI & Theme Customization
    "nwg-display"           # Visual monitor layout manager for Hyprland
    "nwg-look"              # Sync GTK themes/icons/cursors on Wayland
    "qt5ct" "qt6ct"         # Critical for styling KDE apps on non-KDE environments

    # 5. Developer & Maintenance
    "neovim"                # Next-gen Vim for lightning fast coding
    "pacman-contrib"        # System maintenance (includes 'paccache')
)

# ------------------------------------------------------------------------------
# EXECUTE INSTALLATION
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/2] Syncing databases and installing the ultimate toolkit...${NC}"
# Using --needed to skip already installed packages
sudo pacman -Sy --needed --noconfirm "${ESSENTIAL_TOOLS[@]}"

# ------------------------------------------------------------------------------
# COMPLETION
# ------------------------------------------------------------------------------
echo -e "\n${BLUE}====================================================${NC}"
echo -e "${GREEN}[2/2] ✅ SYSTEM IS FULLY EQUIPPED!${NC}"
echo -e "${BLUE}====================================================${NC}"
echo -e "${YELLOW}👉 Try 'nvtop' to see your GTX 1650 in action.${NC}"
echo -e "${YELLOW}👉 Use 'nwg-look' to apply your Deep Navy & Mint theme.${NC}"
echo -e "${YELLOW}👉 Use 'okular' to read your Linear Algebra textbooks.${NC}"