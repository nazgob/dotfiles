export PS1="\w>"
set bell-style visible

# Git tab completion
source ~/git-completion.bash

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export BOOST_INC=/opt/local/var/macports/software/boost/1.46.1/opt/local/include

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

alias grep="grep --color"
alias ls="ls -G"
alias h="history"
alias r="bin/rake"
alias g="git"
alias s="git status"
alias v="mvim -v"

#fs stuff
alias fs="cd ~/Projects/future_simple"
alias pj="cd ~/Projects/future_simple/pipejump-web-rails3"
alias core="cd ~/Projects/future_simple/core"

#mysql
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"

export TERM="xterm-color"
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

