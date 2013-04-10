source ~/.bashrc

export HISTFILESIZE=10000
export HISTSIZE=10000

shopt -s histappend
export PROMPT_COMMAND='history -a'
