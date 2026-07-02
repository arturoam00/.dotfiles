XDG_CONFIG_HOME="$HOME/.config"

[[ -f $XDG_CONFIG_HOME/shell/exports.sh ]] && source $XDG_CONFIG_HOME/shell/exports.sh
[[ -f $XDG_CONFIG_HOME/shell/funs.zsh ]] && source $XDG_CONFIG_HOME/shell/funs.zsh
[[ -f $XDG_CONFIG_HOME/shell/paths.sh ]] && source $XDG_CONFIG_HOME/shell/paths.sh

[[ -f $HOME/.env ]] && source $HOME/.env
[[ -f $HOME/.secrets ]] && source $HOME/.secrets
