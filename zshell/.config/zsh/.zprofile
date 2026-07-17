[[ -f $HOME/.config/shell/paths.zsh ]] && source $HOME/.config/shell/paths.zsh
[[ -f $HOME/.env ]] && source $HOME/.env
[[ -f $HOME/.secrets ]] && source $HOME/.secrets

# Post environment actions
# -- Screenshots directory
export GRIM_DEFAULT_DIR=${XDG_PICTURES_DIR:-~/Pix}/Screenshots 
mkdir -p "$GRIM_DEFAULT_DIR"
