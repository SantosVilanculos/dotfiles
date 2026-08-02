<picture><source media="(prefers-color-scheme: dark)" srcset="https://www.shieldcn.dev/github/last-commit/santosvilanculos/dotfiles.svg?variant=secondary&size=sm&mode=dark&font=geist"><img alt="Last commit" src="https://www.shieldcn.dev/github/last-commit/santosvilanculos/dotfiles.svg?variant=secondary&size=sm&mode=light&font=geist"></picture>
<picture><source media="(prefers-color-scheme: dark)" srcset="https://www.shieldcn.dev/github/license/santosvilanculos/dotfiles.svg?variant=ghost&size=sm&mode=dark&font=geist"><img alt="License" src="https://www.shieldcn.dev/github/license/santosvilanculos/dotfiles.svg?variant=ghost&size=sm&mode=light&font=geist"></picture>

![](./screenshot.png)

```sh
stow -Rv <package>
```

```sh
stow -Dv <package>
```

---

## apt

### configuration

```sh
sudo add-apt-repository -y ppa:git-core/ppa

sudo add-apt-repository -y ppa:ondrej/php

sudo add-apt-repository -y ppa:ondrej/nginx

sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch

/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2025.12.14_all.deb keyring.deb SHA256:2c816fbd12ea4d84811818aed0ce3a5da589be1afa30833eb32abc1e4fe6349e
sudo apt install ./keyring.deb
echo "deb [signed-by=/usr/share/keyrings/sur5r-keyring.gpg] http://debian.sur5r.net/i3/ $(grep '^VERSION_CODENAME=' /etc/os-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
```

### import

```sh
xargs -a ./apt.txt sudo apt-get install -y
```

### export

```sh
apt-mark showmanual > ./apt.txt
```

## code

### import

```sh
xargs -n 1 -a ./code.txt code --install-extension
```

### export

```sh
code --list-extensions > ./code.txt
```

## code-insiders

### import

```sh
xargs -n 1 -a ./code-insiders.txt code-insiders --install-extension
```

### export

```sh
code-insiders --list-extensions > ./code-insiders.txt
```

## composer

### import

```sh
xargs -a ./composer.txt composer global require
```

### export

```sh
composer global show --name-only --direct > ./composer.txt
```

## flatpak

### import

```sh
xargs -a ./flatpak.txt flatpak install flathub
```

### export

```sh
flatpak list --user --app --columns=application > ./flatpak.txt
```

### bin

```sh
sudo ln -sf /var/lib/flatpak/exports/bin/app.zen_browser.zen /usr/local/bin/zen
sudo ln -sf /var/lib/flatpak/exports/bin/com.obsproject.Studio /usr/local/bin/obs
sudo ln -sf /var/lib/flatpak/exports/bin/fr.handbrake.ghb /usr/local/bin/ghb
sudo ln -sf /var/lib/flatpak/exports/bin/io.dbeaver.DBeaverCommunity /usr/local/bin/dbeaver
sudo ln -sf /var/lib/flatpak/exports/bin/it.mijorus.gearlever /usr/local/bin/gearlever
sudo ln -sf /var/lib/flatpak/exports/bin/md.obsidian.Obsidian /usr/local/bin/obsidian
sudo ln -sf /var/lib/flatpak/exports/bin/org.audacityteam.Audacity /usr/local/bin/audacity
sudo ln -sf /var/lib/flatpak/exports/bin/org.inkscape.Inkscape /usr/local/bin/inkscape
sudo ln -sf /var/lib/flatpak/exports/bin/org.kde.kdenlive /usr/local/bin/kdenlive
sudo ln -sf /var/lib/flatpak/exports/bin/org.onlyoffice.desktopeditors /usr/local/bin/onlyoffice
sudo ln -sf /var/lib/flatpak/exports/bin/org.pulseaudio.pavucontrol /usr/local/bin/pavucontrol
sudo ln -sf /var/lib/flatpak/exports/bin/org.qbittorrent.qBittorrent /usr/local/bin/qbittorrent
sudo ln -sf /var/lib/flatpak/exports/bin/org.videolan.VLC /usr/local/bin/vlc
```
