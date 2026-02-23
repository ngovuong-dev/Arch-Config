#!/usr/bin/env bash
set -euo pipefail

# Directory containing wallpapers
WALL_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/wallpapers"
# Temporary file used as background for the lock screen
LOCK_BG="$HOME/.cache/current_wallpaper"
# Path to your custom Rofi theme
THEME="$HOME/.config/rofi/scripts/wallpaper-picker/wallpaper-picker.rasi"

if [ ! -d "$WALL_DIR" ]; then
    notify-send "Error" "Wallpaper directory does not exist: $WALL_DIR"
    exit 1
fi

# Find image files, handling spaces in filenames safely
mapfile -d '' files < <(find "$WALL_DIR" -maxdepth 1 -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' -o -iname '*.gif' -o -iname '*.bmp' -o -iname '*.svg' \) -print0 | sort -z)

if [ ${#files[@]} -eq 0 ]; then
    notify-send "Error" "No images found in $WALL_DIR"
    exit 1
fi

# Convert to a stream for rofi with icon support
ROFI_CMD=(rofi -dmenu -i -show-icons -p " " -theme "$THEME")

# Build input for rofi and run it
selected=$(
    {
        for f in "${files[@]}"; do
            name=$(basename "$f")
            printf '%s\x00icon\x1f%s\n' "$name" "$f"
        done
    } | "${ROFI_CMD[@]}"
)

# Exit if nothing is selected
if [ -z "${selected//[$'\t\n\r']}/" ]; then
    exit 0
fi

# Find the exact full path of the selected file
FULL_PATH=""
for f in "${files[@]}"; do
    if [ "$(basename "$f")" = "$selected" ]; then
        FULL_PATH="$f"
        break
    fi
done

if [ -z "$FULL_PATH" ]; then
    notify-send "Error" "Could not find path for: $selected"
    exit 1
fi

# Update the temporary symlink for hyprlock
mkdir -p "$(dirname "$LOCK_BG")"
ln -sf "$FULL_PATH" "$LOCK_BG"

# Apply wallpaper using swww
if command -v swww >/dev/null 2>&1; then
    # Ensure swww daemon is running in the background
    if ! swww query >/dev/null 2>&1; then
        swww-daemon &
        sleep 0.5 # Wait a moment for the daemon to initialize
    fi
    
    # Set the wallpaper with an animated wipe transition
    # You can change 'wipe' to 'grow', 'fade', 'outer', or 'random'
    swww img "$FULL_PATH" --transition-fps 144 --transition-type any --transition-bezier .68,-0.55,.26,1.55 --transition-angle 30 --transition-step 90 --transition-duration 1.5
    
    notify-send "Wallpaper changed" "${selected}"
else
    notify-send "Error" "swww is not installed. Please install it to change wallpapers."
fi

exit 0
