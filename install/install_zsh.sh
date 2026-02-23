#!/usr/bin/env bash

# ==============================================================================
# TERMINAL COLOR CODES
# Used to make the output look professional and easy to read.
# ==============================================================================
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color (resets to default)

echo -e "${BLUE}====================================================${NC}"
echo -e "${GREEN}  ULTIMATE ZSH & POWERLEVEL10K AUTO-INSTALLER (ARCH)${NC}"
echo -e "${BLUE}====================================================${NC}\n"

# ------------------------------------------------------------------------------
# STEP 1: Install core dependencies
# We need zsh (the shell), git (to download themes/plugins), and curl.
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[1/5] Installing core packages: Zsh, Git, Curl...${NC}"
sudo pacman -S --noconfirm zsh git curl

# ------------------------------------------------------------------------------
# STEP 2: Change the default shell
# Tells the system to use Zsh instead of Bash for your current user.
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[2/5] Changing default shell to Zsh...${NC}"
chsh -s $(which zsh)

# ------------------------------------------------------------------------------
# STEP 3: Install Oh My Zsh Framework
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[3/5] Installing Oh My Zsh framework...${NC}"
rm -rf ~/.oh-my-zsh
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ------------------------------------------------------------------------------
# STEP 4: Download Powerlevel10k & Productivity Plugins
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[4/5] Downloading Powerlevel10k, Autosuggestions & Syntax Highlighting...${NC}"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Clone Powerlevel10k theme (using --depth=1 for a much faster download)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k

# Clone essential plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

# ------------------------------------------------------------------------------
# STEP 5: Configure ~/.zshrc
# Apply the newly downloaded theme and plugins to your Zsh configuration.
# ------------------------------------------------------------------------------
echo -e "${YELLOW}[5/5] Writing configurations to ~/.zshrc...${NC}"

# Replace the default theme (robbyrussell) with powerlevel10k
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# Enable the plugins
sed -i 's/^plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

echo -e "\n${GREEN}✅ SUCCESS! Your Zsh & Powerlevel10k machine is ready.${NC}"
echo -e "${YELLOW}👉 Please LOG OUT and LOG BACK IN for the changes to take effect.${NC}"
echo -e "${YELLOW}👉 The Powerlevel10k configuration wizard will automatically start on your first terminal launch!${NC}"