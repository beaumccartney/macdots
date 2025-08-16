set fish_greeting

bass eval "$(/usr/libexec/path_helper)"

set --local NOCHECKIN_SCRIPT "$(status dirname)/nocheckin.fish"
if test -f $NOCHECKIN_SCRIPT
	source $NOCHECKIN_SCRIPT
end

set --export EDITOR "nvim"
set --export VISUAL "nvim"

set --export MANPAGER "sh -c 'col -bx | bat --language man -p'"

set --export RIPGREP_CONFIG_PATH "$HOME/macdots/ripgrepconfig"

set --export BUN_INSTALL "$HOME/.bun"
set --export PNPM_HOME "$HOME/Library/pnpm"


eval (/opt/homebrew/bin/brew shellenv)

# ensure these are prepended on $PATH
fish_add_path   --move                                \
                "$HOME/.local/bin"                    \
                "$PNPM_HOME"                          \
                "$BUN_INSTALL/bin"                    \
                "$HOME/.elan/bin"

alias e $VISUAL

alias fd "fd --hidden --no-ignore-vcs --follow"

alias mkdir 'mkdir -pv'

alias ls 'eza --oneline'
alias la 'eza --all --oneline'
alias ll 'eza --long --all --git'
alias lmr 'll --sort=time --reverse'

abbr g 'git'
abbr lg 'lazygit'

function dequarantine --wraps rm --description 'dequarantine passsed files/dirs'
    sudo xattr -d -r com.apple.quarantine $argv
end

if not status is-interactive
    exit
end

fish_vi_key_bindings
fish_vi_cursor
set fish_cursor_insert line

set fish_color_command green --bold

zoxide init fish | source

starship init fish | source
