#!/bin/bash
# setup.sh

echo "Starting setup script..."

# Log the current directory
echo "Current directory: $(pwd)"

# Log the contents of the current directory
echo "Directory contents:"
ls -la

# Create the necessary directories
echo "Creating directories..."
mkdir -p ~/.config/Code/User/

# Copy VS Code settings
echo "Copying VS Code settings..."
cp ./vscode/settings.json ~/.config/Code/User/settings.json

# Check if the file was copied successfully
if [ -f ~/.config/Code/User/settings.json ]; then
    echo "VS Code settings copied successfully."
else
    echo "Failed to copy VS Code settings."
fi

# (Optional) Install VS Code extensions
echo "Installing extensions..."
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint

echo "Setup script completed. --JOHN"
