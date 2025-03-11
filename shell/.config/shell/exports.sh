export EDITOR="nvim"

export XDG_DOWNLOAD_DIR="$HOME/Dls"
export XDG_DOCUMENTS_DIR="$HOME/Docs"
export XDG_PICTURES_DIR="$HOME/Pics"
export XDG_DESKTOP_DIR="$HOME/Dsktp"
export XDG_VIDEOS_DIR="$HOME/Vids"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export TEXMFHOME="$XDG_DATA_HOME/texmf"
export TEXMFVAR="$TEXMFHOME/var"
export TEXMFCONFIG="$XDG_CONFIG_HOME/texmf"

export HISTFILE="$XDG_DATA_HOME/history"
export LESSHISTFILE=-
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40% --color='pointer:209'"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export HIST_FILE="$XDG_DATA_HOME/history"
export R_LIBS_USER="$HOME/.local/lib/R"
export TMUX_PLUGIN_MANAGER_PATH="$XDG_CONFIG_HOME/tmux/plugins"
export NLTK_DATA="$XDG_DATA_HOME/nltk_data"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
mkdir -p $__GL_SHADER_DISK_CACHE_PATH && export __GL_SHADER_DISK_CACHE=1
