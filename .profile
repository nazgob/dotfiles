[ -f ~/Projects/dotfiles/.bashrc ] && source ~/Projects/dotfiles/.bashrc
[ -f ~/Projects/dotfiles/.alias ] && source ~/Projects/dotfiles/.alias
[ -f ~/Projects/dotfiles/.git-completion.bash ] && source ~/Projects/dotfiles/.git-completion.bash

if [[ "$OSTYPE" == "linux-gnu" ]]
then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
