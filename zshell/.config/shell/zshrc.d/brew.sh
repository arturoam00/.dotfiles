if [[ ! -f /opt/homebrew/bin/brew ]]; then
    return 0
fi

eval "$(brew shellenv)"

zcompdump="${ZSH_CACHE_DIR:-$HOME/.cache/zsh}/zcompdump"
mkdir -p "${zcompdump:h}"
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit -d "$zcompdump"
fi

unset zcompdump
