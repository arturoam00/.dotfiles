if [ -n "${MAMBA_EXE:-}" ] && [ -x "$MAMBA_EXE" ]; then
    mamba_init="$(
        "$MAMBA_EXE" shell hook \
            --shell "$DOTFILES_SHELL" \
            --root-prefix "$MAMBA_ROOT_PREFIX" 2>/dev/null
    )" || mamba_init=

    if [ -n "$mamba_init" ]; then
        eval "$mamba_init"
    else
        alias micromamba="$MAMBA_EXE"
    fi

    unset mamba_init
fi

