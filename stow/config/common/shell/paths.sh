if [ -d "$HOME/.local/bin" ]; then
    path_prepend "$HOME/.local/bin"
fi

dotfiles_env_bin="$MAMBA_ROOT_PREFIX/envs/dotfiles/bin"
if [ -d "$dotfiles_env_bin" ]; then
    path_prepend "$dotfiles_env_bin"
fi
unset dotfiles_env_bin

