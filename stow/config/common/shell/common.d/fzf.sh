if command -v fzf >/dev/null 2>&1 && { [ -t 0 ] || [ -t 1 ]; }; then
    fzf_init="$(fzf "--$DOTFILES_SHELL" 2>/dev/null)" || fzf_init=

    if [ -n "$fzf_init" ]; then
        eval "$fzf_init"
    elif [ "$DOTFILES_SHELL" = bash ]; then
        for fzf_file in \
            /usr/share/fzf/completion.bash \
            /usr/share/fzf/key-bindings.bash
        do
            [ -r "$fzf_file" ] && . "$fzf_file"
        done
        unset fzf_file
    fi

    unset fzf_init
fi
