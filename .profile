source ~/dotfiles/.bashrc
source ~/dotfiles/.alias
source ~/dotfiles/.git-completion.bash

export EDITOR='vim'

if [[ "$OSTYPE" == "linux-gnu" ]]
then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Applications/Racket v6.6/bin/:$PATH"

