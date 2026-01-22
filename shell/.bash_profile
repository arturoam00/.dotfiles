# Set home config
XDG_CONFIG_HOME="$HOME/.config"

# Set up environment
[[ -f $XDG_CONFIG_HOME/shell/exports.sh ]] && source $XDG_CONFIG_HOME/shell/exports.sh
[[ -f $XDG_CONFIG_HOME/shell/funs.sh ]] && source $XDG_CONFIG_HOME/shell/funs.sh
[[ -f $XDG_CONFIG_HOME/shell/paths.sh ]] && source $XDG_CONFIG_HOME/shell/paths.sh

# Include bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Load local env
[[ -f $HOME/.env ]] && source $HOME/.env

# Load secrets
[[ -f $HOME/.secrets ]] && source $HOME/.secrets

