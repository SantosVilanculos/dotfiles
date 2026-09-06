### CARGO
if [ -s "$HOME/custom.sh" ]; then
  source "$HOME/custom.sh"
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

### HERD LITE
if [ -d "$HOME/.config/herd-lite/bin" ]; then
  export PATH="$PATH:$HOME/.config/herd-lite/bin"
  export PHP_INI_SCAN_DIR="$HOME/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
fi

### LERD
export LERD_OFFLINE=1

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
  eval "$(pyenv init - zsh)"
  eval "$(pyenv virtualenv-init -)"
fi

### NVM
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  source "$HOME/.nvm/nvm.sh"
fi

if [ -s "$HOME/.nvm/bash_completion" ]; then
  source "$HOME/.nvm/bash_completion"
fi

### ZIG
if [ -d "$HOME/zig-x86_64-linux-0.14.1" ]; then
  export PATH="$PATH:$HOME/zig-x86_64-linux-0.14.1"
fi

### ZOXIDE
if [ -n "$(command -v zoxide)" ]; then
  eval "$(zoxide init zsh --cmd cd)"
fi

