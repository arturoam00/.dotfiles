set -o vi

bind -m vi-insert '"\C-l": clear-screen'
bind -m vi-command '"\C-l": clear-screen'

bind -m vi-insert '"\C-u": unix-line-discard'
bind -m vi-command '"\C-u": unix-line-discard'

bind -m vi-insert '"\e.": yank-last-arg'
bind -m vi-command '"\e.": yank-last-arg'

bind -x '"\C-p": ssh_fzf'
