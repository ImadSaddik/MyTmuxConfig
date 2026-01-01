#!/bin/bash

CONFIG_FILE="tmux.conf"
TARGET_FILE="$HOME/.tmux.conf"
BACKUP_FILE="$HOME/.tmux.conf.backup"

echo "Setting up your tmux configuration"

if [ -f "$TARGET_FILE" ]; then
    echo "Found existing tmux.conf. Backing it up to $BACKUP_FILE"
    mv "$TARGET_FILE" "$BACKUP_FILE"
fi

echo "Copying new configuration"
cp "$CONFIG_FILE" "$TARGET_FILE"

echo ""
echo "Which display server are you using?"
echo "1) Wayland (default)"
echo "2) X11 (Legacy Xorg)"
read -p "Select 1 or 2: " choice

if [ "$choice" = "2" ]; then
    echo "Configuring for X11 (using xclip)"
    # Replace wl-copy with xclip in the target file
    sed -i 's/wl-copy/xclip -selection clipboard -i/g' "$TARGET_FILE"
    echo "Make sure you have xclip installed: sudo apt install xclip"
else
    echo "Configuring for Wayland (using wl-copy)"
    echo "Make sure you have wl-clipboard installed: sudo apt install wl-clipboard"
fi

echo ""
echo "Reloading tmux"
tmux source-file "$TARGET_FILE" 2>/dev/null

echo "Done! Enjoy your new tmux setup."