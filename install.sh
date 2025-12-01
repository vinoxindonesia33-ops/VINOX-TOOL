#!/bin/bash

clear
echo "Installing dependencies..."
pkg update -y
pkg upgrade -y
pkg install python git -y

echo "Setting up VINOX TOOL..."
chmod +x vinox.py

echo "Creating command shortcut..."
cp vinox.py $PREFIX/bin/vinox
chmod +x $PREFIX/bin/vinox

echo
echo "===================================="
echo "   ✔ Installation Complete"
echo "   Run tool using: vinox"
echo "===================================="

chmod +x install.sh
