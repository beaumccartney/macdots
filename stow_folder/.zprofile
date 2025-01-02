eval "$(/usr/libexec/path_helper)"
eval "$(/opt/homebrew/bin/brew shellenv)"

export EDITOR="nvim"
export VISUAL="nvim"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export RIPGREP_CONFIG_PATH="$HOME/macdots/ripgrepconfig"

export PNPM_HOME="$HOME/Library/pnpm"

export HOMEBREW_AUTO_UPDATE_SECS=86400

export PATH="$HOME/.local/bin":"$PNPM_HOME":$PATH
