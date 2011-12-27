export PS1="\w>"
set bell-style visible

# Git tab completion
source ~/git-completion.bash

# Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

alias grep="grep --color"
alias ls="ls -G"
alias h="history"
alias r="bin/rake"
alias g="git"
alias s="git status"
alias p="git pull --rebase && bundle"
alias v="mvim --remote-tab-silent"

#fs stuff
alias fs="cd ~/projects/futuresimple"
alias pj="cd ~/projects/futuresimple/sales"
alias sales="cd ~/projects/futuresimple/sales"
alias sync="cd ~/projects/futuresimple/syncable"
alias core="cd ~/projects/futuresimple/core"
alias common="cd ~/projects/futuresimple/common"
alias crm="cd ~/projects/futuresimple/crm"
alias tags="cd ~/projects/futuresimple/tags"
alias tiramisu="cd ~/projects/futuresimple/tiramisu"
alias portal="cd ~/projects/futuresimple/portal"

