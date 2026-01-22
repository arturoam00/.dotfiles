# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash history stuff
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend

# Automatically cd to typed dir
shopt -s autocd

[[ -f $XDG_CONFIG_HOME/shell/aliases.sh ]] && source $XDG_CONFIG_HOME/shell/aliases.sh
[[ -f $XDG_CONFIG_HOME/shell/inputrc.sh ]] && source $XDG_CONFIG_HOME/shell/inputrc.sh

# funs are apparently not exported in profile as i want
[[ -f $XDG_CONFIG_HOME/shell/funs.sh ]] && source $XDG_CONFIG_HOME/shell/funs.sh  

for file in $XDG_CONFIG_HOME/shell/bashrc.d/*.sh; do
    [[ -r "$file" ]] && source "$file"
done

# Prompt needs to see __git_ps1 fun just loaded
[[ -f $XDG_CONFIG_HOME/shell/prompt.sh ]] && source $XDG_CONFIG_HOME/shell/prompt.sh
