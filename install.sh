#!/usr/bin/env bash

WORKDIR=$(dirname $(realpath "$0"))

if [[ "$OSTYPE" == linux-android* ]]; then
  ln -fnsv "$WORKDIR/configuration/.zshenv" "$HOME/.zshenv"
  ln -fnsv "$WORKDIR/configuration/.zshrc" "$HOME/.zshrc"

  mkdir -p "$HOME/.local/bin"
  ln -fnsv "$WORKDIR/configuration/.local/bin/update" "$HOME/.local/bin/update"

elif [[ "$OSTYPE" == linux-gnu* ]]; then
  mkdir -pv "$HOME/.config/Code/User"
  mkdir -pv "$HOME/.config/gh"
  mkdir -pv "$HOME/.local/bin"
  mkdir -pv "$HOME/.local/share/backgrounds"
  mkdir -pv "$HOME/.nvm"
  mkdir -pv "$HOME/.vim"

  stow -d "$WORKDIR" -t "$HOME" -R -v "configuration"

elif [[ "$OSTYPE" == cygwin* || "$OSTYPE" == msys* ]]; then
  mkdir -p "$HOME/AppData/Roaming/Code/User"
  cp -v "$WORKDIR/configuration/.config/Code/User/keybindings.json" "$HOME/AppData/Roaming/Code/User/keybindings.json"
  cp -v "$WORKDIR/configuration/.config/Code/User/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
fi
