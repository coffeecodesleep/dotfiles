#!/bin/bash
# setup.sh

# Create the necessary directories
mkdir -p ~/.config/Code/User/

# Copy VS Code settings
cp /path/to/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json

# (Optional) Install VS Code extensions
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint
