[![license](https://img.shields.io/github/license/santosvilanculos/dotfiles)](https://github.com/SantosVilanculos/dotfiles/blob/main/LICENSE)

![](./screenshot.png)

---

```sh
sudo apt-get install -y stow
chmod +x ./configuration/install.sh && ./configuration/install.sh
```

```sh
chmod +x ./configuration/uninstall.sh && ./configuration/uninstall.sh
```

---

```sh
curl -sSfL https://raw.githubusercontent.com/SantosVilanculos/dotfiles/main/setup/debian/bookworm.sh | sudo sh
```

```sh
curl -sSfL https://raw.githubusercontent.com/SantosVilanculos/dotfiles/main/setup/debian/trixie.sh | sudo sh
```

```sh
curl -sSfL https://raw.githubusercontent.com/SantosVilanculos/dotfiles/main/setup/ubuntu/noble.sh | sudo sh
```

---

```sh
code --list-extensions > ./packages/code.txt
```

```sh
composer global show --name-only > ./packages/composer.txt
```

```sh
flatpak list --columns=application > ./packages/flatpak.txt
```

```sh
gnome-extensions list > ./packages/gnome-extensions.txt
```
