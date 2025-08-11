Write-Host "Hello The AVOLife!"
Read-Host "Press any key to continue.."

Set-ExecutionPolicy -ExecutionPolicy Bypass -scope Process -Force
#-Scope Process -Force
<#
.Install Chocolatey
#>
Set-ExecutionPolicy -ExecutionPolicy Bypass -scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco -?

# Google Slavery
echo Install Google Apps
choco install google-drive-file-stream
choco install google-chrome
choco install google-chat
choco install drawio

# Dev Env
echo Install nodejs, watchman, & composer
brew install node@14
brew install watchman
brew install composer

# Core Dev Tools
choco install sublime-text
choco install visual-studio-code
choco install webstorm
choco install postman
choco install sequel-pro
choco install android-studio
choco install iterm2
choco install sourcetree

# Nice to have
echo Nice to have
choco install teamviewer
choco install rectangle
choco install the-unarchiver
choco install appcleaner
choco install vlc
choco install spotify
choco install whatsapp
choco install microsoft-teams
choco install zoomus

# cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "IT Arena #AvoWebSolutions"
