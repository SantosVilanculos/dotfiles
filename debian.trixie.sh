#!/usr/bin/env bash

# ---
sudo apt-get purge -y ace-of-penguins
sudo apt-get purge -y aisleriot
sudo apt-get purge -y five-or-more
sudo apt-get purge -y four-in-a-row
sudo apt-get purge -y gbrainy
sudo apt-get purge -y gnome-2048
sudo apt-get purge -y gnome-chess
sudo apt-get purge -y gnome-klotski
sudo apt-get purge -y gnome-mahjongg
sudo apt-get purge -y gnome-mines
sudo apt-get purge -y gnome-nibbles
sudo apt-get purge -y gnome-robots
sudo apt-get purge -y gnome-sudoku
sudo apt-get purge -y gnome-sushi
sudo apt-get purge -y gnome-taquin
sudo apt-get purge -y gnome-tetravex
sudo apt-get purge -y gnomine
sudo apt-get purge -y hitori
sudo apt-get purge -y iagno
sudo apt-get purge -y lightsoff
sudo apt-get purge -y mahjongg
sudo apt-get purge -y pegsolitaire
sudo apt-get purge -y quadrapassel
sudo apt-get purge -y swell-foop
sudo apt-get purge -y tali

sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get clean -y
sudo service packagekit restart

sudo apt-get update
sudo apt-get upgrade -y

# ---
sudo apt-get install -y libfuse2
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub "https://dl.flathub.org/repo/flathub.flatpakrepo"
sudo apt-get install -y gnome-software-plugin-flatpak

# ---
sudo apt-get install -y zsh
sudo chsh -s "/usr/bin/zsh"

# ---
sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ---
sudo apt-get install -y git-extras
sudo apt-get install -y apt-transport-https
sudo apt-get install -y build-essential
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y fd-find
sudo apt-get install -y ffmpeg
sudo apt-get install -y fzf
sudo apt-get install -y gh
sudo apt-get install -y git
sudo apt-get install -y gparted
sudo apt-get install -y gpg
sudo apt-get install -y java-common
sudo apt-get install -y jq
sudo apt-get install -y libnss3-tools
sudo apt-get install -y lsb-release
sudo apt-get install -y maim
sudo apt-get install -y net-tools
sudo apt-get install -y ntfs-3g
sudo apt-get install -y openssh-client
sudo apt-get install -y openssl
sudo apt-get install -y pulseaudio
sudo apt-get install -y "pulseaudio-*"
sudo apt-get install -y ripgrep
sudo apt-get install -y software-properties-common
sudo apt-get install -y stow
sudo apt-get install -y tmux
sudo apt-get install -y unzip
sudo apt-get install -y vim
sudo apt-get install -y vlc
sudo apt-get install -y wget
sudo apt-get install -y xclip
sudo apt-get install -y xdotool
sudo apt-get install -y xsel
sudo apt-get install -y zip
sudo apt-get install -y eza
sudo apt-get install -y mesa-utils

# ---
sudo apt-get install -y gnome-browser-connector #chrome-gnome-shell
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y gnome-tweaks
sudo flatpak install -y flathub com.mattjakeman.ExtensionManager
sudo flatpak install -y flathub org.pulseaudio.pavucontrol

# ---
sudo flatpak install -y flathub it.mijorus.gearlever

# ---
sudo apt-get install -y i3
sudo apt-get install -y dmenu
sudo apt-get install -y rofi
sudo apt-get install -y nitrogen
sudo apt-get install -y lxpolkit

# ---
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

sudo apt-get install -y --ignore-missing \
  php8.4 php8.4-{cli,common,fpm,mysql,sqlite3,pgsql,zip,gd,mbstring,curl,xml,bcmath,tokenizer,intl,tidy,imagick,mcrypt}

# ---
sudo apt-get install -y apache2 libapache2-mod-php
sudo systemctl enable apache2.service
sudo systemctl start apache2.service
sudo a2enmod rewrite

echo "DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm" | sudo tee /etc/apache2/mods-enabled/dir.conf

sudo systemctl restart apache2.service

# ---
sudo apt-get install -y mariadb-server

sudo sed -i 's/^bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

sudo systemctl restart mariadb
