packadd minpac

if !exists('*minpac#init')
  " minpac is not available.
else
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('kien/ctrlp.vim')
  call minpac#add('vim-ruby/vim-ruby')
  call minpac#add('ervandew/supertab')
  call minpac#add('airblade/vim-rooter')
  call minpac#add('nazgob/grb256')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-rails')
  call minpac#add('tpope/vim-sleuth')
  call minpac#add('tpope/vim-unimpaired')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

syntax enable
set background=dark
set t_Co=256
colorscheme grb256

"tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"invisible stuff
set list
set listchars=tab:..,trail:_

"shift key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
nore , ;

"arrow keys fixes
map <Left> :echo "not!"<cr>
map <Right> :echo "not!"<cr>
map <Up> :echo "not!"<cr>
map <Down> :echo "not!"<cr>

"visual shifting
vnoremap < <gv
vnoremap > >gv

"searching/moving
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"make things better
set guioptions=rh
set encoding=utf-8
set scrolloff=5
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,list:full
set visualbell
set cursorline
set number
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set cul
set noswapfile
set cpoptions+=$
set nowrap

set autoread
set autowrite

let mapleader = " "

" Edit this very file
nmap <leader>v :tabedit $MYVIMRC<cr>
" Look for files
nmap <leader>f <c-p>
" Clear trailing spaces with F5
noremap <F5> :%s/\s\+$<CR>:w<CR>
 "Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Fast save
nmap <leader>w :w<cr>
" Copy to system clipboard
map <leader>y "y


" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.jpg,*.jpeg,*.png,*.xpm,*.gif,*.bmp
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/*,*/log/*,*.log,*/coverage/*
set wildignore+=*.swp,*~,._*

if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

filetype plugin indent on

let g:ctrlp_custom_ignore = 'build\|.agility-shared\|.git'

autocmd BufWritePre *.rb :%s/\s\+$//e

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
