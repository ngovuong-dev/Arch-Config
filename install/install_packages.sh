#!/usr/bin/env bash

# ==============================================================================
# TERMINAL COLOR CODES
# ==============================================================================
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}   LIGHTWEIGHT ESSENTIAL TOOLS INSTALLER (ARCH)     ${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# ------------------------------------------------------------------------------
# THE ULTIMATE LIGHTWEIGHT PACKAGE LIST
# ------------------------------------------------------------------------------
ESSENTIAL_TOOLS=(
    # 1. Modern CLI Replacements (Written in Rust/C for max speed)
    "fastfetch"             # Blazing fast system info script (neofetch alternative)
    "btop"                  # Beautiful and lightweight system resource monitor

    # 2. File Management & Archives
    "yazi"                  # Blazing fast terminal file manager
    "thunar"                # Lightweight GUI file manager
    "thunar-archive-plugin" # Archive plugin for Thunar
    "file-roller"           # Archive manager (zip, tar, etc.)
    "unzip"                 # Unzip utility
    "p7zip"                 # 7z archive utility

    # 3. Media Viewers (Wayland Native & Minimalist)

    # 4. Developer Tools & System Maintenance
    "nwg-look"              # GTK theme appearance settings for Wayland
    "neovim"                # Modern Vim (Required for LazyVim setup)
    "pacman-contrib"        # Contains 'paccache' to clean old package cache
)

# ------------------------------------------------------------------------------
# EXECUTE INSTALLATION
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/2] Syncing databases and installing essential tools...${NC}"
sudo pacman -Sy --needed --noconfirm "${ESSENTIAL_TOOLS[@]}"

# ------------------------------------------------------------------------------
# COMPLETION
# ------------------------------------------------------------------------------
echo -e "\n${BLUE}====================================================${NC}"
echo -e "${GREEN}[2/2] ✅ INSTALLATION COMPLETE!${NC}"
echo -e "${BLUE}====================================================${NC}"
echo -e "${YELLOW}👉 Try typing 'fastfetch' or 'btop' to test your new tools.${NC}"