bindkey -v   # vi mode (equivalent of `set -o vi`)

bindkey -M viins '^L' clear-screen
bindkey -M vicmd '^L' clear-screen

bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

bindkey -M viins '^U' backward-kill-line
bindkey -M vicmd '^U' backward-kill-line
bindkey -M viins '^K' kill-line
bindkey -M vicmd '^K' kill-line

# insert-last-word is zsh's equivalent of readline's yank-last-arg
bindkey -M viins '\e.' insert-last-word
bindkey -M vicmd '\e.' insert-last-word

# `bind -x` ran a function directly without touching the line buffer.
# zsh's equivalent is a widget via zle -N.
ssh_fzf_widget() { ssh_fzf }
zle -N ssh_fzf_widget
bindkey -M viins '^P' ssh_fzf_widget
bindkey -M vicmd '^P' ssh_fzf_widget
