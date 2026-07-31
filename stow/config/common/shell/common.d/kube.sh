if command -v kubectl >/dev/null 2>&1; then
    eval "$(kubectl completion "$DOTFILES_SHELL")"
fi

