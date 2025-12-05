[![license](https://img.shields.io/github/license/santosvilanculos/dotfiles)](https://github.com/SantosVilanculos/dotfiles/blob/main/LICENSE)

![](./screenshot.png)

```sh
stow -t $HOME -Rv ./
```

```sh
stow -t $HOME -Dv ./
```

---

```sh
sudo add-apt-repository -y ppa:git-core/ppa
```

```sh
sudo add-apt-repository -y ppa:ondrej/php
```

```sh
sudo add-apt-repository -y ppa:ondrej/nginx
```

```sh
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
```

```sh
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2025.03.09_all.deb keyring.deb SHA256:2c2601e6053d5c68c2c60bcd088fa9797acec5f285151d46de9c830aaba6173c
sudo apt install ./keyring.deb
echo "deb [signed-by=/usr/share/keyrings/sur5r-keyring.gpg] http://debian.sur5r.net/i3/ $(grep '^VERSION_CODENAME=' /etc/os-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
```

---

```sh
apt-mark showmanual > apt.txt
code --list-extensions > code.txt
composer global show --name-only --direct > composer.txt
flatpak list --user --app --columns=application > flatpak.txt
```
