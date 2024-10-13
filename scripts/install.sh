#!/bin/bash

set -e

# Determine ZSH plugin directory
if [ -d "$HOME/.oh-my-zsh" ]; then
    PLUGIN_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zapmarks"
else
    PLUGIN_DIR="$HOME/.zsh/zapmarks"
fi

# Clone the repository if it doesn't exist
if [ ! -d "$PLUGIN_DIR" ]; then
    git clone https://github.com/iliutaadrian/zapmarks.git "$PLUGIN_DIR"
else
    echo "ZapMarks directory already exists. Updating..."
    git -C "$PLUGIN_DIR" pull
fi

# Create plugin directory
mkdir -p "$PLUGIN_DIR"

# Copy plugin files
cp "$PLUGIN_DIR/zapmarks.plugin.zsh" "$PLUGIN_DIR/"
cp "$PLUGIN_DIR/zapmarks.json" "$HOME/.config/zapmarks.json"

# Add to .zshrc if not already present
if ! grep -q "plugins=(.*zapmarks.*)" "$HOME/.zshrc"; then
    sed -i '' '/^plugins=/ s/)/ zapmarks)/' "$HOME/.zshrc"
fi

echo "ZapMarks installed to $PLUGIN_DIR"
echo "Example zapmarks.json copied to $HOME/.config/zapmarks.json"
echo "Please restart your terminal or run 'source ~/.zshrc' to start using ZapMarks."
