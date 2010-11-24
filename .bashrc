export PS1="\w>"
set bell-style visible

export PATH="$PATH:~/Projects/git-achievements"
alias git="git-achievements"

# Git tab completion
source ~/git-completion.bash

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export BOOST_INC=/opt/local/var/macports/software/boost/1.44.0_0/opt/local/include

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

