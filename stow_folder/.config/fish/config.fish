set fish_greeting

bass source ~/.zshenv

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ;

set --export BUN_INSTALL "$HOME/.bun"

set --export PYENV_ROOT $HOME/.pyenv

set --export CARGO_TARGET_DIR $HOME/.cache/cargo-target

set --export RIPGREP_CONFIG_PATH $DOTFILES/ripgrepconfig

fish_add_path $HOME/.local/bin $BUN_INSTALL/bin $PYENV_ROOT/bin $HOME/.cabal/bin /Users/beaum/.ghcup/bin

eval $(/opt/homebrew/bin/brew shellenv)

if not status is-interactive
    exit
end

fish_vi_key_bindings

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

set fish_color_command green --bold

# pnpm
set -gx PNPM_HOME "/Users/beaum/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

abbr npm pnpm
abbr npx pnpx

alias e $VISUAL

alias mkdir 'mkdir -p'

alias ls 'exa'
alias ll 'exa -la --git'
alias lmr 'll  --sort=time --reverse'

alias zigup 'zigup --install-dir ~/thirdparty/zig'

alias dungeon '~/dungeon-note/dungeon.py'

abbr lg 'lazygit'

pyenv init - | source

zoxide init fish | source

fnm env --use-on-cd | source

starship init fish | source

