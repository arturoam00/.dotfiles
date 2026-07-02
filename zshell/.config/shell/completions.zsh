# --- Completion ----------------------------------------------------------
autoload -Uz compinit
# Only rebuild the completion dump once a day - keeps shell startup fast.
# (drop the -C-related cache check entirely if you'd rather always verify)
zcompdump="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
mkdir -p "${zcompdump:h}"
if [[ -n ${zcompdump}(#qN.mh+24) ]]; then
    compinit -d "$zcompdump"
else
    compinit -C -d "$zcompdump"
fi
unset zcompdump

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'   # case-insensitive
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
