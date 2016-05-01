source ~/dotfiles/.bashrc
source ~/dotfiles/.alias
source ~/dotfiles/.git-completion.bash

export EDITOR='vim'

if [[ "$OSTYPE" == "linux-gnu" ]]
then
  export PATH="$HOME/.rbenv/bin:$PATH"
fi

eval "$(rbenv init -)"

function b {
  cd ~/Projects/vms/base_machine
  vagrant ssh
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

