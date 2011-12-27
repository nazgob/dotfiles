Some config files for...
========================
- git
- vim
- ruby
- bash

Vim plugins:
------------
- ack.vim
- command-t
- nerdcommenter
- nerdtree
- supertab
- vim-endwise
- vim-fugitive
- vim-haml
- vim-irblack
- vim-javascript
- vim-markdown
- vim-rails
- vim-repeat
- vim-rooter
- vim-ruby
- vim-surround
- vim-unimpaired

Random installation tips:
-------------------------
0. some plugins might be not be added as proper git submodule
1. `git clone git://github.com/nazgob/dotfiles.git`  
2. `cd dotfiles`  
3. `git submodule init`  
4. `git submodule update`  
5. `cd .vim/bundle/command-t/ruby/command-t/`  
6. `rvm system`  
7. `ruby extconf.rb`  
8. `make`  
9. `ln -s ~/Projects/dotfiles/.vimrc ~/.vimrc`  
10. `ln -s ~/Projects/dotfiles/.vim ~/.vim`  
11. `ln -s ~/Projects/dotfiles/.gemrc ~/.gemrc`  

Author:
------
Copyright (c) 2010-2012 [Przemek Owczarek](http://twitter.com/powczarek), released under the MIT license
