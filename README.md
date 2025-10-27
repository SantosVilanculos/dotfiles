[![license](https://img.shields.io/github/license/santosvilanculos/dotfiles)](https://github.com/SantosVilanculos/dotfiles/blob/main/LICENSE)

![](./screenshot.png)

---

```sh
sudo apt-get install -y stow
chmod +x ./install.sh && ./install.sh
```

```sh
chmod +x ./uninstall.sh && ./uninstall.sh
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
code --list-extensions > ./code.txt
```

```sh
composer global show --name-only > composer.txt
```

```sh
flatpak list --columns=application > ./flatpak.txt
```

```sh
gnome-extensions list > ./gnome-extensions.txt
```
