set fish_greeting

fish_add_path $HOME/.local/bin

eval $(/opt/homebrew/bin/brew shellenv)

bass source ~/.zshenv

if not status is-interactive
    exit
end

set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

set fish_color_command green --bold

alias e $VISUAL

alias mkdir 'mkdir -p'

alias ls 'exa'
alias ll 'exa -la --git'
alias lmr 'll  --sort=time --reverse'

abbr lg 'lazygit'

zoxide init fish | source

starship init fish | source
