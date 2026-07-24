if command -v direnv >/dev/null 2>&1; then
    eval "$(direnv hook "$DOTFILES_SHELL")"
fi

