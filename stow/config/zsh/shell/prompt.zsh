autoload -Uz vcs_info
autoload -Uz add-zsh-hook
setopt PROMPT_SUBST

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%{%F{214}%} ✗%{%f%}'
zstyle ':vcs_info:*' stagedstr   '%{%F{142}%} ✓%{%f%}'

zstyle ':vcs_info:git:*' formats       ' %{%F{245}%}on%{%f%} %{%F{142}%}󰊢 %b%{%f%}%c%u'
zstyle ':vcs_info:git:*' actionformats ' %{%F{245}%}on%{%f%} %{%F{142}%}󰊢 %b%{%f%}%c%u %{%F{214}%}(%a)%{%f%}'

add-zsh-hook precmd vcs_info

PROMPT='%{%F{245}%}╭─%{%f%} %{%F{109}%}(${CONDA_DEFAULT_ENV:-${VIRTUAL_ENV_PROMPT:-base}})%{%f%} %{%F{215}%}%~%{%f%}${vcs_info_msg_0_}
%{%F{245}%}╰─%{%f%}%(?.%{%F{215}%}.%{%F{196}%})❯%{%f%} '
