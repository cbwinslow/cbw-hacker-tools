#!/usr/bin/env bash
# install.sh - CBW Hacker Tools bootstrap script

set -e

echo "🔧 Starting CBW Hacker Tools install..."

# Step 1: Run dotfile installer
echo "📁 Installing dotfiles..."
bash dotfiles/install.sh

# Step 2: Prompt user for categories
echo "💡 Select tool categories to install (space-separated, e.g., core tui recon):"
read -r -a categories

# Step 3: Run bash installer with selected categories
echo "⚙️ Installing selected packages..."
cd bash/
bash cbw-hacker-tools.sh "${categories[@]}"

echo "✅ Installation complete."
