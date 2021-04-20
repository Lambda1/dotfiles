source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[01;34m\]\u@\h\[\e[0m\]\[\e[01;31m\][\w$(__git_ps1)]\[\e[0m\]\[\e[01;34m\]\\$\[\e[0m\] '
