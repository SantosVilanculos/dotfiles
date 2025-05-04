## code

### export

```sh
code --list-extensions > ./code.txt
```

### import

```sh
./install  code
```

## composer

### export

```sh
composer global show --name-only > composer.txt
```

### import

```sh
./install composer
```

## flatpak

### export

```sh
flatpak list --columns=application > ./flatpak.txt
```

### import

```sh
./install flatpak
```

## gnome-extensions

### export

```sh
gnome-extensions list > gnome-extensions.txt
```
