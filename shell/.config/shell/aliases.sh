# Enable color support for ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"
    alias ls='ls --color=auto --hide=__pycache__ --hide=snap --hide=*.egg-info' \
          diff='diff --color=auto' \
          grep='grep --color=auto' \
          fgrep='fgrep --color=auto' \
          egrep='egrep --color=auto'
else
    alias ls='ls --hide=__pycache__ \ 
          --hide=snap  \
          --hide=build \
          '
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Some more ls aliases
alias ll='ls -alF' \
      la='ls -A' \
      l='ls -CF' \
      lt='ls -rlt1h' \
      ltt='ls -rt1h --group'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

alias cp="cp -iv" \
      mv="mv -iv" \
      rm="rm -vI" \
      mkdir='mkdir -p' \
      r='Rscript' \
      cls='clear' \
      bye='poweroff' \
      ..='cd ..' \
      apt='~/.local/bin/install-packages/apt-manage' \
      py='python3 -q' \
      R='R --vanilla --quiet' \
      tmux='tmux -f ~/.config/tmux/tmux.conf' \
      blth='bluetoothctl' \
      up='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo snap refresh' \
      lf='lfub' \
      buildenv='python3 -m venv .venv && echo "source .venv/bin/activate" > .envrc && direnv allow 2>/dev/null && mkdir .vscode && cp $XDG_DOCUMENTS_DIR/templates/vscode/settings.json .vscode/settings.json' \
      tlmgr='tlmgr --usermode' \
      firefox='librewolf' \
      zz='zathura' \
      feh='feh -xF' \
      mm='micromamba' \
      r2e='r2e -c $XDG_CONFIG_HOME/rss2email/rss2email.cfg -d $XDG_DATA_HOME/rss2email/rss2email.json' \
      icloudpdx='icloudpd --directory ~/Pics/Photos/icloud --set-exif-datetime --folder-structure {:%Y/%m/}' \
      exiftool='exiftool -config $XDG_CONFIG_HOME/exiftool/ExifTool_config' \
      bb='BORG_REPO=rsync.net:Backup borg-backup' \
      music='soundcoreA1-mode music' \
      call='soundcoreA1-mode call'
    

