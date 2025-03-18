# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Enable color prompt if the terminal supports it
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Define the prompt
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e[38;5;211m\]${VIRTUAL_ENV_PROMPT:+$VIRTUAL_ENV_PROMPT}\[\033[00m\]\[\033[38;5;111m\]\u@\h\[\033[00m\] \[\e[3m\]\[\033[38;5;114m\]\w\[\e[0m\]$(__git_ps1 " \[\033[38;5;220m\](git: \[\033[00m\]\[\033[38;5;167m\]%s\[\033[00m\]\[\033[38;5;220m\])\[\033[00m\]")\n\[\033[38;5;111m\]\$ \[\033[00m\]'
else
    PS1='${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV_PROMPT:+$VIRTUAL_ENV_PROMPT}\u@\h \w$(__git_ps1 " (git: %s)")\n\$ '
fi

# Set terminal title in xterm-compatible terminals
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\u@\h: \w\a\]$PS1"
        ;;
esac

