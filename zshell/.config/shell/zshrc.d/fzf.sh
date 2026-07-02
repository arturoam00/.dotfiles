if command -v fzf >/dev/null 2>&1; then
  # fzf >= 0.48 ships its own zsh integration, no separate files needed.
  source <(fzf --zsh)
else
  FZF_COMPLETIONS="/usr/share/fzf/completion.zsh"
  FZF_KEYBINDINGS="/usr/share/fzf/key-bindings.zsh"

  [[ -f $FZF_COMPLETIONS ]] && . $FZF_COMPLETIONS
  [[ -f $FZF_KEYBINDINGS ]] && . $FZF_KEYBINDINGS

  unset FZF_COMPLETIONS FZF_KEYBINDINGS
fi
