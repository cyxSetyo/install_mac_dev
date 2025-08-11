#!/bin/bash

echo "Hello The AVOLife!"
read -n 1 -s -r -p "Press any key to continue..."
echo ""

# Pastikan Homebrew terinstall
if ! command -v brew &>/dev/null; then
    echo "Homebrew belum terinstall. Menginstall Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update & upgrade brew
brew update
brew upgrade

# Google Apps
echo "Menginstall Google Apps..."
brew install --cask google-drive
brew install --cask google-chrome
brew install --cask google-chat
brew install --cask drawio

# Dev Env
echo "Menginstall Node.js, Watchman, & Composer..."
brew install node@14
brew install watchman
brew install composer

# Core Dev Tools
echo "Menginstall Core Dev Tools..."
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask webstorm
brew install --cask postman
brew install --cask sequel-pro
brew install --cask android-studio
brew install --cask iterm2
brew install --cask sourcetree

# Nice to have
echo "Menginstall aplikasi tambahan..."
brew install --cask teamviewer
brew install --cask rectangle
brew install --cask the-unarchiver
brew install --cask appcleaner
brew install --cask vlc
brew install --cask spotify
brew install --cask whatsapp
brew install --cask microsoft-teams
brew install --cask zoom

# Cleanup cache Homebrew
brew cleanup

echo "IT Arena #AvoWebSolutions"
echo "Selesai!"
