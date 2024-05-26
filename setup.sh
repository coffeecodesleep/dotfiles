#!/bin/bash
# setup.sh

# Print the current directory for debugging purposes
echo "Current directory: $(pwd)"

# Create the necessary directories
echo "Creating directories..."
mkdir -p ~/.config/Code/User/

# Copy VS Code settings
echo "Copying VS Code settings..."
cp ./vscode/settings.json ~/.config/Code/User/settings.json

# (Optional) Install VS Code extensions
echo "Installing extensions..."
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint

echo "Setup script completed."
