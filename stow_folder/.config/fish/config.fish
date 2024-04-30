set fish_greeting

bass source ~/.zshenv

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ;

eval (/opt/homebrew/bin/brew shellenv)

# ensure these are prepended on $PATH
fish_add_path   --move                                \
                "$HOME/.local/bin"                    \
                "$(brew --prefix llvm@17)/bin"        \
                "$(brew --prefix python)/libexec/bin" \
                "$PNPM_HOME"

alias e $VISUAL

alias fd "fd --hidden --no-ignore-vcs --follow"

alias mkdir 'mkdir -p'

alias ls 'eza --all --oneline'
alias ll 'eza -la --git'
alias lmr 'll --sort=time --reverse'

abbr lg 'lazygit'

# git aliases
abbr grw 'git reword'
abbr gff 'git ff'
abbr gnoff 'git noff'

function dequarantine --wraps rm --description 'dequarantine passsed files/dirs'
    sudo xattr -d -r com.apple.quarantine (dirname $argv)
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniforge/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniforge/base/bin" $PATH
    end
end
# <<< conda initialize <<<

if not status is-interactive
    exit
end

fish_vi_key_bindings
fish_vi_cursor
set fish_cursor_insert line

set fish_color_command green --bold

zoxide init fish | source

starship init fish | source
