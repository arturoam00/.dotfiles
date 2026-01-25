export EDITOR="nvim"
export BROWSER="librewolf"
export OPENER="xdg-open"

export XDG_CONFIG_HOME="$HOME/.config"

[[ -f $XDG_CONFIG_HOME/user-dirs.dirs ]] && . $XDG_CONFIG_HOME/user-dirs.dirs
export XDG_PICTURES_DIR
export XDG_VIDEOS_DIR
export XDG_DOWNLOAD_DIR
export XDG_DOCUMENTS_DIR

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$TEXMFHOME/var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texmf"

export HISTFILE="$XDG_DATA_HOME/history"
export LESSHISTFILE=-
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export HIST_FILE="$XDG_DATA_HOME/history"
export R_LIBS_USER="$HOME/.local/lib/R"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_CONFIG_HOME/tmux/plugins"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export NLTK_DATA="$XDG_DATA_HOME/nltk_data"
export MAMBA_EXE="/usr/bin/micromamba"
export MAMBARC="$XDG_CONFIG_HOME/mamba/mambarc"
export MAMBA_ROOT_PREFIX="$XDG_DATA_HOME/micromamba"
export MANPAGER="bat -plman"
export FZF_DEFAULT_OPTS="--layout=reverse --height 41% --preview 'bat --color=always --style=numbers --line-range=:500 {} '"
