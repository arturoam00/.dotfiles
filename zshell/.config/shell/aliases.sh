# Enable color support for ls and add handy aliases
alias ls='ls --color=auto --hide=__pycache__ --hide="*.egg-info" --hide=build --hide=dist' \
      diff='diff --color=auto' \
      grep='grep --color=auto' \
      fgrep='fgrep --color=auto' \
      egrep='egrep --color=auto'

# Some more ls aliases
alias ll='ls -alF' \
      la='ls -A' \
      l='ls -CF' \
      lt='ls -rlt1h' \
      ltt='ls -rt1h --group'

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Common utilities
alias cp="cp -iv" \
      mv="mv -iv" \
      rm="rm -vI" \
      mkdir='mkdir -p' \
      ..='cd ..' \
      cls='clear' \
      bye='systemctl poweroff'

# Programs
alias r='Rscript' \
      py='python3 -q' \
      R='R --vanilla --quiet' \
      tmux='tmux -f ~/.config/tmux/tmux.conf' \
      lf='lfub' \
      zz='zathura' \
      exiftool='exiftool -config $XDG_CONFIG_HOME/exiftool/ExifTool_config' \
      md2html='cmark -t html --unsafe' \
      ho='handlr open'

# Custom tools
alias bb='BORG_REPO=rsync.net:Backup borg-backup' \
      music='soundcoreA1-mode music' \
      call='soundcoreA1-mode call'
