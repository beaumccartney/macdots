alias e=$VISUAL

alias fd="fd --hidden --no-ignore-vcs --follow"

alias mkdir="mkdir -p"

alias ls="eza --oneline"
alias la="eza --all --oneline"
alias ll="eza -la --git"

alias g="git"
alias lg="lazygit"

bindkey -v '^?' backward-delete-char

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
