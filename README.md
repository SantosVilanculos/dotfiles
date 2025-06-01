[![GitHub License](https://img.shields.io/github/license/santosvilanculos/dotfiles)](https://github.com/SantosVilanculos/dotfiles/blob/main/LICENSE)

![](./screenshot.png)

## configuration

### required

#### linux

```sh
sudo apt-get install -y stow
```

### install

```sh
chmod +x ./install.sh
```

```sh
./install.sh
```

### uninstall

```sh
chmod +x ./uninstall.sh
```

```sh
./uninstall.sh
```

## os setup

### debian bookworm

```sh
curl -sSfL https://raw.githubusercontent.com/SantosVilanculos/dotfiles/main/setup/debian/bookworm.sh | sudo sh
```

### ubuntu noble/24.04

```sh
curl -sSfL https://raw.githubusercontent.com/SantosVilanculos/dotfiles/main/setup/ubuntu/noble.sh | sudo sh
```
