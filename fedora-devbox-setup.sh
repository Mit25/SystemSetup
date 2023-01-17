# Init
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Communication
flatpak install com.discordapp.Discord
flatpak install flathub com.slack.Slack
flatpak install flathub org.telegram.desktop
flatpak install flathub us.zoom.Zoom
flatpak install flathub org.signal.Signal

# Productivity
flatpak install flathub com.todoist.Todoist
flatpak install flathub com.toggl.TogglDesktop
flatpak install flathub md.obsidian.Obsidians
flatpak install flathub com.bitwarden.desktop

# Drive
flatpak install flathub com.dropbox.Client

# Programing
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-merge
sudo dnf install sublime-text

# Development
sudo dnf install java-1.8.0-openjdk.x86_64
sudo dnf install java-11-openjdk.x86_64
sudo dnf install gcc-c++
sudo dnf install clang

# Music
flatpak install flathub com.spotify.Client
sudo dnf install vlc

# Gnome
sudo dnf install gnome-tweaks
sudo dnf install gnome-extensions-app
sudo dnf install gnome-shell-extension-appindicator

# System
sudo dnf install gparted
sudo dnf install deja-dup
# Make sure secure boot is disabled before installing Nvidia proprietory drivers
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda
# Validate Graphic Drivers are installed
/sbin/lspci | grep -e VGA
/sbin/lspci | grep -e 3D

# Packages
sudo dnf install python3-pip
sudo dnf install ffmpeg

# Network
sudo dnf install transmission
sudo dnf install protonvpn && pip3 install --user dnspython>=1.16.0 && sudo dnf install libappindicator-gtk3

# Misc
sudo dnf install xclip
