# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Bash history stuff
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend

[[ -f /etc/bashrc ]] && source /etc/bashrc

[[ -f $XDG_CONFIG_HOME/shell/aliases.sh ]] && source $XDG_CONFIG_HOME/shell/aliases.sh
[[ -f $XDG_CONFIG_HOME/shell/inputrc.sh ]] && source $XDG_CONFIG_HOME/shell/inputrc.sh

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

for file in $XDG_CONFIG_HOME/shell/bashrc.d/*.sh; do
    [[ -r "$file" ]] && source "$file"
done

# Prompt needs to see __git_ps1 fun just loaded
[[ -f $XDG_CONFIG_HOME/shell/prompt.sh ]] && source $XDG_CONFIG_HOME/shell/prompt.sh
