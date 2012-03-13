source ~/.bashrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export HISTFILESIZE=10000
export HISTSIZE=10000

shopt -s histappend
export PROMPT_COMMAND='history -a'
