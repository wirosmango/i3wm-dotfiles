#!/usr/bin/env bash
set -e

if command -v apt-get >/dev/null 2>&1; then
    echo "Installing for ALTLinux..."
    sudo apt-get install i3 picom rofi dunst fastfetch polybar feh flameshot kitty thunar ttf-jetbrains-mono-nl
    

elif command -v pacman >/dev/null 2>&1; then
    echo "Installing for Arch..."
    yay -S i3wm picom rofi dunst fastfetch polybar feh flameshot kitty thunar ttf-jetbrains-mono rofi-greenclip

else
    echo "Unsupported distro"
    exit 1
fi

cp -r * ~/.config

echo "Done!"
