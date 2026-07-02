FZF_COMPLETIONS="/usr/share/fzf/completion.bash"
FZF_KEYBINDINGS="/usr/share/fzf/key-bindings.bash"

[[ -f $FZF_COMPLETIONS ]] && . $FZF_COMPLETIONS
[[ -f $FZF_KEYBINDINGS ]] && . $FZF_KEYBINDINGS

unset FZF_COMPLETIONS FZF_KEYBINDINGS

