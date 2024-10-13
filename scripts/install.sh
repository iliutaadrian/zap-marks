#!/bin/bash

# Determine ZSH plugin directory
if [ -d "$HOME/.oh-my-zsh" ]; then
    PLUGIN_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zapmarks"
else
    PLUGIN_DIR="$HOME/.zsh/zapmarks"
fi

# Create plugin directory
mkdir -p "$PLUGIN_DIR"

# Copy plugin files
cp zapmarks.plugin.zsh "$PLUGIN_DIR/"
cp zapmarks.json "$PLUGIN_DIR/"

echo "ZapMarks installed to $PLUGIN_DIR"
echo "Add 'zapmarks' to your plugins list in .zshrc to activate"
