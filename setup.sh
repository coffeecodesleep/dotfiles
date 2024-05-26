#!/bin/bash
# setup.sh

echo "Starting setup script..."

# Log the current directory
echo "Current directory: $(pwd)"

# Log the contents of the current directory
echo "Directory contents:"
ls -la

# Install the code CLI if not available
if ! command -v code &> /dev/null
then
    echo "code CLI not found, installing..."
    curl -L "https://update.code.visualstudio.com/latest/linux-deb-x64/stable" -o vscode.deb
    sudo apt-get install -y ./vscode.deb
    rm vscode.deb
fi

# Create the necessary directories
echo "Creating directories..."
mkdir -p ~/.config/Code/User/

# Copy VS Code settings
echo "Copying VS Code settings..."
cp ./vscode/settings.json ~/.config/Code/User/settings.json

# Install VS Code extensions
echo "Installing extensions..."
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint

echo "Setup script completed."
