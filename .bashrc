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
alias a="ls -lrthG"
alias h="history"
alias r="bin/rake"
alias g="git"
alias s="git status --short"
alias l="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit | head"
alias gg="git grep --color"
alias gd="git diff --color"
alias gp="git pull --rebase"
alias ga="git add ."
alias gcm="git commit -am"
#alias v="mvim --remote-tab-silent"
alias v="mvim -v"

alias tag="ctags -R --exclude=.git --exclude=coverage --exclude=log *"
