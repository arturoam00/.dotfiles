# Enable color support for ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
    alias ls='ls --color=auto --hide=__pycache__ --hide=*.egg-info' \
          diff='diff --color=auto' \
          grep='grep --color=auto' \
          fgrep='fgrep --color=auto' \
          egrep='egrep --color=auto'
else
    alias ls='ls --hide=__pycache__ \ 
          --hide=build \
          '
fi

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
      firefox='librewolf' \
      lf='lfub' \
      zz='zathura' \
      exiftool='exiftool -config $XDG_CONFIG_HOME/exiftool/ExifTool_config' \
      md2html='cmark -t html --unsafe'

# Custom tools
alias bb='BORG_REPO=rsync.net:Backup borg-backup' \
      music='soundcoreA1-mode music' \
      call='soundcoreA1-mode call'
    


# Python envirionment
# alias buildenv='python3 -m venv .venv && echo "source .venv/bin/activate" > .envrc && direnv allow 2>/dev/null && mkdir .vscode && cp $XDG_TEMPLATES_DIR/vscode/settings.json .vscode/settings.json'
