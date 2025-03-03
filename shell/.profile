XDG_CONFIG_HOME="$HOME/.config"

[[ -f $XDG_CONFIG_HOME/shell/exports.sh ]] && source $XDG_CONFIG_HOME/shell/exports.sh
[[ -f $XDG_CONFIG_HOME/shell/funs.sh ]] && source $XDG_CONFIG_HOME/shell/funs.sh
[[ -f $XDG_CONFIG_HOME/shell/paths.sh ]] && source $XDG_CONFIG_HOME/shell/paths.sh

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

[[ -f $HOME/.env ]] && source $HOME/.env
