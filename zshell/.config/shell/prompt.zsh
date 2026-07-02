autoload -Uz vcs_info
setopt PROMPT_SUBST

# --- git status via vcs_info ---------------------------------------------
zstyle ':vcs_info:*' enable git
# check-for-changes runs `git status` on every prompt draw to show ✗/✓.
# Comment this out if you work in huge repos and notice prompt lag.
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%{%F{214}%} ✗%{%f%}'
zstyle ':vcs_info:*' stagedstr   '%{%F{142}%} ✓%{%f%}'

zstyle ':vcs_info:git:*' formats       ' %{%F{245}%}on%{%f%} %{%F{142}%}󰊢 %b%{%f%}%c%u'
zstyle ':vcs_info:git:*' actionformats ' %{%F{245}%}on%{%f%} %{%F{142}%}󰊢 %b%{%f%}%c%u %{%F{214}%}(%a)%{%f%}'

precmd() { vcs_info }

# --- prompt ----------------------------------------------------------------
# ${CONDA_DEFAULT_ENV:-${VIRTUAL_ENV_PROMPT:-base}} kept exactly as before.
_env_segment='%{%F{109}%}(${CONDA_DEFAULT_ENV:-${VIRTUAL_ENV_PROMPT:-base}})%{%f%}'
_path_segment='%{%F{215}%}%~%{%f%}'

PROMPT="%{%F{245}%}╭─%{%f%} ${_env_segment} ${_path_segment}"'${vcs_info_msg_0_}'"
%{%F{245}%}╰─%{%f%}"'%(?.%{%F{215}%}.%{%F{196}%})❯%{%f%} '

unset _env_segment _path_segment
