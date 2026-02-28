#!/bin/bash

/* --- Hyprland Keybindings Cheat Sheet --- */

# Define the list of keybindings (Categorized & formatted)
bindings="🚀 SUPER + Return 🡒 Open Terminal (Kitty)
📁 SUPER + E 🡒 Open File Manager (Dolphin)
🔍 SUPER + A 🡒 App Launcher (Rofi)
🎮 SUPER + F 🡒 Run App with NVIDIA (Prime-run)
🌐 SUPER + F10 🡒 Web Browser (Firefox)
❌ SUPER + Q / F4 🡒 Close Active Window
🪟 SUPER + F11 🡒 Toggle Fullscreen
📺 SUPER + SHIFT + P 🡒 Monitor Layout (Windows + P)
📸 SUPER + SHIFT + S 🡒 Screenshot (Select Region)
📸 SUPER + Print 🡒 Screenshot (Active Window)
📋 SUPER + V 🡒 Clipboard Manager
🔔 SUPER + N 🡒 Notification Center (SwayNC)
🖼️ SUPER + CTRL + ALT + Insert 🡒 Wallpaper Picker
🔒 SUPER + CTRL + ALT + L 🡒 Lock Screen (Hyprlock)
⏻ SUPER + CTRL + ALT + Pause 🡒 Power Menu
🗂️ ALT + Tab 🡒 Window Switcher
🔄 CTRL + ALT + W 🡒 Restart Waybar (Fix errors)
↔️ SUPER + Arrows 🡒 Move Focus (Left/Right/Up/Down)
📐 SUPER + SHIFT + Arrows 🡒 Resize Window
🔢 SUPER + [1-0] 🡒 Switch Workspace
🚚 SUPER + SHIFT + [1-0] 🡒 Move Window to Workspace"

# Run Rofi to display the list
echo -e "$bindings" | rofi -dmenu -i -p "⌨️ Keybinds:" -theme ~/.config/rofi/scripts/keybindings-menu/keybindings-menu.rasi