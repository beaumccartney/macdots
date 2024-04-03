set fish_greeting

bass source ~/.zshenv

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ;

eval (/opt/homebrew/bin/brew shellenv)

if not status is-interactive
    exit
end

fish_vi_key_bindings
fish_vi_cursor
set fish_cursor_insert line

set fish_color_command green --bold

alias e $VISUAL

alias fd "fd --hidden --no-ignore-vcs --follow"

alias mkdir 'mkdir -p'

alias ls 'eza --all --oneline'
alias ll 'eza -la --git'
alias lmr 'll --sort=time --reverse'

abbr lg 'lazygit'

function dequarantine --wraps rm --description 'dequarantine passsed files/dirs'
    sudo xattr -d -r com.apple.quarantine (dirname $argv)
end

zoxide init fish | source

fnm env --use-on-cd | source

starship init fish | source

