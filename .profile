source ~/dotfiles/.bashrc
source ~/dotfiles/.alias
source ~/dotfiles/.git-completion.bash

if [[ "$OSTYPE" == "linux-gnu" ]]
then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

function b {
  cd ~/Projects/vms/base_machine
  vagrant ssh
}

