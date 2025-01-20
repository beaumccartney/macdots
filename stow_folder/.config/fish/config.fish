set fish_greeting

bass eval "$(/usr/libexec/path_helper)"

set -x EDITOR "nvim"
set -x VISUAL "nvim"

set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x RIPGREP_CONFIG_PATH "$HOME/macdots/ripgrepconfig"

set -x PNPM_HOME "$HOME/Library/pnpm"

set -x HOMEBREW_AUTO_UPDATE_SECS 86400

eval (/opt/homebrew/bin/brew shellenv)

# ensure these are prepended on $PATH
fish_add_path   --move                                \
                "$HOME/.local/bin"                    \
                "$PNPM_HOME"                          \

alias e $VISUAL

alias fd "fd --hidden --no-ignore-vcs --follow"

alias mkdir 'mkdir -p'

alias ls 'eza --oneline'
alias la 'eza --all --oneline'
alias ll 'eza -la --git'
alias lmr 'll --sort=time --reverse'

abbr g 'git'
abbr lg 'lazygit'

# git aliases
abbr grw 'git reword'
abbr gff 'git ff'
abbr gnoff 'git noff'

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

fnm env --use-on-cd | source

zoxide init fish | source

starship init fish | source
