ZSH_FUNC_DIR=${ZSH_FUNC_DIR:-"${XDG_DATA_HOME:-$HOME/.local/share}/zfunc"}

if command -v snow >/dev/null 2>&1; then
    if [ ! -e "$ZSH_FUNC_DIR/_snow" ]; then
        mkdir -p "$ZSH_FUNC_DIR"
        snow --show-completion > "$ZSH_FUNC_DIR/_snow"
    fi

    fpath+=("$ZSH_FUNC_DIR")
fi

unset ZSH_FUNC_DIR
