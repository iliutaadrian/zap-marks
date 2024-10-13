#!/bin/bash

set -e

# Determine ZSH plugin directory
if [ -d "$HOME/.oh-my-zsh" ]; then
    PLUGIN_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zapmarks"
else
    PLUGIN_DIR="$HOME/.zsh/zapmarks"
fi

# Clone the repository if it doesn't exist, otherwise update it
if [ ! -d "$PLUGIN_DIR" ]; then
    git clone https://github.com/iliutaadrian/zapmarks.git "$PLUGIN_DIR"
else
    echo "ZapMarks directory already exists. Updating..."
    git -C "$PLUGIN_DIR" pull
fi

# Ensure the config directory exists
mkdir -p "$HOME/.config"

# Copy zapmarks.json to the config directory
cp "$PLUGIN_DIR/zapmarks.json" "$HOME/.config/zapmarks.json"

# Add to .zshrc if not already present
if ! grep -q "plugins=(.*zapmarks.*)" "$HOME/.zshrc"; then
    sed -i.bak '/^plugins=/ s/)/ zapmarks)/' "$HOME/.zshrc"
    echo "Added zapmarks to plugins in .zshrc"
else
    echo "zapmarks already in plugins list in .zshrc"
fi

echo "ZapMarks installed to $PLUGIN_DIR"
echo "zapmarks.json copied to $HOME/.config/zapmarks.json"
echo "Please restart your terminal or run 'source ~/.zshrc' to start using ZapMarks."
