export PS1="\w>"
set bell-style visible

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export CLICOLOR=1

export PATH=$PATH:~/bin

if [[ "$OSTYPE" == "darwin15" && $(brew --prefix)/etc/bash_completion ]]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/dotfiles/sensible.bash ]; then
  source ~/dotfiles/sensible.bash
fi

