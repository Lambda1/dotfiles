source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
PS1="\[\e[1;34m\][\u@\h \w]\\$\[\e[m\] \[\e[32m\] $(__git_ps1 "(%s)") \[\e[m\]"
