# Shared defaults. Host-specific values may override these from ~/.env.
if [ "${DOTFILES_ENV_LOADED:-}" = 1 ]; then
    return 0
fi

: "${XDG_CONFIG_HOME:=$HOME/.config}"
: "${XDG_DATA_HOME:=$HOME/.local/share}"
: "${XDG_CACHE_HOME:=$HOME/.cache}"
: "${XDG_STATE_HOME:=$HOME/.local/state}"
export XDG_CONFIG_HOME XDG_DATA_HOME XDG_CACHE_HOME XDG_STATE_HOME

: "${EDITOR:=nvim}"
: "${BROWSER:=librewolf}"
: "${OPENER:=xdg-open}"
: "${PRINTER:=GrwNxtPrinter}"
export EDITOR BROWSER OPENER PRINTER

if [ -r "$XDG_CONFIG_HOME/user-dirs.dirs" ]; then
    . "$XDG_CONFIG_HOME/user-dirs.dirs"
fi
export XDG_PICTURES_DIR XDG_VIDEOS_DIR XDG_DOWNLOAD_DIR XDG_DOCUMENTS_DIR

export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$TEXMFHOME/var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texmf"
export LESSHISTFILE=-
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export TMUX_TMPDIR="${XDG_RUNTIME_DIR:-$XDG_CACHE_HOME/tmux}"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export R_LIBS_USER="$HOME/.local/lib/R"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_CONFIG_HOME/tmux/plugins"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export NLTK_DATA="$XDG_DATA_HOME/nltk_data"
export MAMBARC="$XDG_CONFIG_HOME/mamba/mambarc"
export MAMBA_ROOT_PREFIX="$XDG_DATA_HOME/micromamba"
export MANPAGER="bat -plman"
export FZF_DEFAULT_OPTS="--layout=reverse --height 41%"
export VIRTUAL_ENV_DISABLE_PROMPT=1
export GRIM_DEFAULT_DIR="${XDG_PICTURES_DIR:-$HOME/Pix}/Screenshots"

if command -v micromamba >/dev/null 2>&1; then
    MAMBA_EXE="$(command -v micromamba)"
elif [ -x "$HOME/.local/bin/micromamba" ]; then
    MAMBA_EXE="$HOME/.local/bin/micromamba"
elif [ -x /usr/bin/micromamba ]; then
    MAMBA_EXE=/usr/bin/micromamba
fi
export MAMBA_EXE

DOTFILES_ENV_LOADED=1
export DOTFILES_ENV_LOADED
