# --- History -----------------------------------------------------------
# HISTFILE is already exported from exports.sh .
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS   # bash's HISTCONTROL=ignoreboth (dupes half)
setopt HIST_IGNORE_SPACE      # bash's HISTCONTROL=ignoreboth (space half)
setopt APPEND_HISTORY         # bash's shopt histappend
setopt INC_APPEND_HISTORY     # write as you go, not just on exit
setopt AUTO_CD                # bash's shopt autocd

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# --- Core config drop-ins -----------------------------------------------
[[ -f $XDG_CONFIG_HOME/shell/completions.zsh ]] && source $XDG_CONFIG_HOME/shell/completions.zsh
# [[ -f $XDG_CONFIG_HOME/shell/aliases.sh ]] && source $XDG_CONFIG_HOME/shell/aliases.sh
[[ -f $XDG_CONFIG_HOME/shell/funs.zsh ]] && source $XDG_CONFIG_HOME/shell/funs.zsh
[[ -f $XDG_CONFIG_HOME/shell/keybindings.zsh ]] && source $XDG_CONFIG_HOME/shell/keybindings.zsh

# for file in $XDG_CONFIG_HOME/shell/zshrc.d/*.sh(N); do
#     source "$file"
# done
#
# --- Prompt (needs vcs_info loaded first) --------------------------------
[[ -f $XDG_CONFIG_HOME/shell/prompt.zsh ]] && source $XDG_CONFIG_HOME/shell/prompt.zsh

# --- Syntax highlighting & autosuggestions --------------
# Highlighting MUST be sourced last among widget-wrapping plugins.
ZSH_AUTOSUGGEST_PATH="${ZSH_AUTOSUGGEST_PATH:-/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh}"
[[ -f "$ZSH_AUTOSUGGEST_PATH" ]] && source "$ZSH_AUTOSUGGEST_PATH"

ZSH_HIGHLIGHT_PATH="${ZSH_HIGHLIGHT_PATH:-/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh}"
[[ -f "$ZSH_HIGHLIGHT_PATH" ]] && source "$ZSH_HIGHLIGHT_PATH"

unset ZSH_AUTOSUGGEST_PATH ZSH_HIGHLIGHT_PATH
