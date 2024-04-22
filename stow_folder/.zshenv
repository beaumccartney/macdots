eval "$(/usr/libexec/path_helper)"

export DOTFILES=$HOME/macdots

export EDITOR="nvim"
export VISUAL="nvim"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export CARGO_TARGET_DIR="$HOME/.cache/cargo-target"
export RIPGREP_CONFIG_PATH="$DOTFILES/ripgrepconfig"

export PNPM_HOME="$HOME/Library/pnpm"
