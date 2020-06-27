export LANG=ja_JP.UTF-8
export JLESSCHARSET=japanese-sjis
export OUTPUT_CHARSET=utf-8
export LC_MESSAGES=C

autoload -Uz colors
colors

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:' formats '(%s@%b)'
zstyle ':vcs_info:' actionformats '(%s@%b|%a)'
_vcs_precmd () { vcs_info }
add-zsh-hook precmd _vcs_precmd

PROMPT="%{$bg[blue]%}%{$fg[white]%}%n@%* $%{$reset_color%} "
RPROMPT='%{$bg[blue]%}%{$fg[white]%}[%~${vcs_info_msg_0_}]%{$reset_color%}'

setopt transient_rprompt
bindkey "^[[3~" delete-char
