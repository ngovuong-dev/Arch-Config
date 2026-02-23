#!/usr/bin/env bash

# --- COLOR CODES ---
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # Reset color

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}   ZRAM AUTO-INSTALLATION & OPTIMIZATION (ARCH) ${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# 1. Install core package
echo -e "${YELLOW}[1/4] Downloading zram-generator from pacman repository...${NC}"
sudo pacman -S --noconfirm zram-generator

# 2. Write optimized configuration to the system
echo -e "${YELLOW}[2/4] Creating config: Allocating 50% RAM, using zstd compression algorithm...${NC}"
sudo tee /etc/systemd/zram-generator.conf > /dev/null <<EOF
[zram0]
zram-size = ram / 2
compression-algorithm = zstd
swap-priority = 100
fs-type = swap
EOF

# 3. Reload systemd and activate the device
echo -e "${YELLOW}[3/4] Reloading systemd daemon and starting zram...${NC}"
sudo systemctl daemon-reload
sudo systemctl restart systemd-zram-setup@zram0.service

# 4. Check the results
echo -e "${YELLOW}[4/4] Current system zram statistics:${NC}"
echo -e "----------------------------------------------------"
zramctl
echo -e "----------------------------------------------------\n"

echo -e "${GREEN}✅ AWESOME! Compressed RAM system is now running smoothly.${NC}"