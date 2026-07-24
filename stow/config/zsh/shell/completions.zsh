# --- Completion ----------------------------------------------------------
setopt EXTENDED_GLOB   # needed for the (#q...) qualifier below
autoload -Uz compinit

# Only rebuild the completion dump once a day - keeps shell startup fast.
zcompdump="${ZSH_CACHE_DIR:-$HOME/.cache/zsh}/zcompdump"
mkdir -p "${zcompdump:h}"
if [[ -f "$zcompdump"(#qNmh-24) ]]; then
    compinit -C -d "$zcompdump"   # fresh enough, skip full verification
else
    compinit -d "$zcompdump"      # stale or missing, rebuild
fi
unset zcompdump

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'   # case-insensitive
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
