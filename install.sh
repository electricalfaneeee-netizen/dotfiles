#!/bin/bash

PACKAGES=(
    "btop"
    "hyprland"
    "pipewire"
    "wireplumber"
    "xdg-desktop-portal-hyprland"
    "hyprpolkitagent"
    "qt5-wayland"
    "qt6-wayland"
    "noto-fonts"
    "inter-font"
    "ttf-nerd-fonts-symbols"
    "kitty"
    "uwsm"
    "libnewt"
    "hyprlock"
    "hyprpaper"
    "greetd"
    "quickshell"
    "mako"
    "starship"
)

install_packages() {
    echo "Updating system and package databases..."
    sudo pacman -Syu --noconfirm

    echo "Starting package installation..."
    for package in "${PACKAGES[@]}"; do
        echo "Installing $package..."
        # Use -S to install, --noconfirm to automate "yes" to prompts
        sudo pacman -S "$package" --noconfirm || echo "Failed to install $package"
    done

    echo "Installation complete."
}

# Run the function
install_packages

ln -sr ~/.dotfiles/nvim/ ~/.config/nvim
ln -sr ~/.dotfiles/hypr/ ~/.config/hypr
ln -sr ~/.dotfiles/quickshell/ ~/.config/quickshell
ln -sr ~/.dotfiles/mako/ ~/.config/mako
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
