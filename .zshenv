### PRIVATE
if [ -s "$HOME/private.sh" ]; then
  source "$HOME/private.sh"
fi

### EXPORT
# if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
#     export QT_QPA_PLATFORM="xcb"
# fi

export TERM="xterm-256color"

if [ -n "$(command -v nvim)" ]; then
  export MANPAGER="nvim +Man!"
fi

export WINIT_X11_SCALE_FACTOR=1

### PATH
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "/usr/sbin" ]; then
  export PATH="$PATH:/usr/sbin"
fi

if [ -d "/var/lib/flatpak/exports/bin" ]; then
  export PATH="$PATH:/var/lib/flatpak/exports/bin"
fi

### CARGO
if [ -s "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

### COMPOSER
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
  export PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

### DIRENV
if [ -n "$(command -v direnv)" ]; then
  eval "$(direnv hook zsh)"
fi

### FZF
if [ -s "/usr/share/doc/fzf/examples/key-bindings.zsh" ]; then
  source "/usr/share/doc/fzf/examples/key-bindings.zsh"
fi

if [ -s "/usr/share/doc/fzf/examples/completion.zsh" ]; then
  source "/usr/share/doc/fzf/examples/completion.zsh"
fi

### PNPM
if [ -d "$HOME/.local/share/pnpm" ]; then
  export PNPM_HOME="$HOME/.local/share/pnpm"
  export PATH="$PATH:$PNPM_HOME"
fi

### PYENV
if [ -d "$HOME/.pyenv/bin" ]; then
  export PATH="$PATH:$HOME/.pyenv/bin"
fi

if [ -n "$(command -v pyenv)" ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

### NVM
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  source "$HOME/.nvm/nvm.sh"
fi

if [ -s "$HOME/.nvm/bash_completion" ]; then
  source "$HOME/.nvm/bash_completion"
fi

### ZOXIDE
if [ -n "$(command -v zoxide)" ]; then
  eval "$(zoxide init zsh)"
fi
