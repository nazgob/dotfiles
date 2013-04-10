export PS1="\w>"
set bell-style visible

# Git tab completion
source ~/.git-completion.bash

# FS helpers
source ~/.base_profile.bash

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

alias grep="grep --color"
alias ls="ls -G"
alias h="history"
alias r="bin/rake"
alias g="git"
alias s="git status -s --branch"
alias gg="git grep --color"
alias gd="git diff --color"
#alias v="mvim --remote-tab-silent"
alias v="mvim -v"

alias tag="ctags -R --exclude=.git --exclude=coverage --exclude=log *"
