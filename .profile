source ~/projects/dotfiles/.alias

export EDITOR='vim'

set bell-style visible

eval "$(rbenv init -)"

PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export CLICOLOR=1

#export PATH=$PATH:~/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/dotfiles/projects/sensible.bash ]; then
  source ~/projects/dotfiles/sensible.bash
fi
