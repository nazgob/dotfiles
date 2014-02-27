export PS1="\w>"
set bell-style visible

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export HISTFILESIZE=10000
export HISTSIZE=10000

shopt -s histappend
export PROMPT_COMMAND='history -a'

export CLICOLOR=1

export PATH=$PATH:~/bin
