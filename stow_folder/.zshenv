eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/usr/libexec/path_helper)"

export DOTFILES=$HOME/macdots

export EDITOR="nvim"
export VISUAL="nvim"

export MANPAGER="nvimpager"

export BUN_INSTALL="$HOME/.bun"
export CARGO_TARGET_DIR="$HOME/.cache/cargo-target"
export RIPGREP_CONFIG_PATH="$DOTFILES/ripgrepconfig"

export PNPM_HOME="$HOME/Library/pnpm"

export ODIN_ROOT="$HOME/thirdparty/Odin"

export PATH="$HOME/.local/bin:$(brew --prefix llvm)/bin:$BUN_INSTALL/bin:$PNPM_HOME:$PATH:$(brew --prefix python)/libexec/bin"
