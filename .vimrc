"come on, don't be silly
set nocompatible

call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on

"tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"make things better
set guioptions=rh
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn
set visualbell
set cursorline
set number
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set cul
set nobackup
set nowritebackup
set noswapfile
set cpoptions+=$
"set foldmethod=syntax

"leader key
let mapleader = ","

"shift key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

"remember marks
set viminfo='100,f1

"searching/moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"long lines
set wrap
set textwidth=79
set formatoptions=qrn1

"help key!
noremap  <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>q :NERDTreeToggle<cr>

"use jj to exit back to normal mode
inoremap jj <ESC>

"tabs
nnoremap <leader>nt :tabnew<cr>
nnoremap <leader>ne :tabedit<space>
nnoremap <leader>nc :tabclose<cr>
nnoremap <leader>nn :tabnext<cr>
nnoremap <leader>np :tabprevious<cr>

"creating splits
nnoremap <leader>w <C-w>v
nnoremap <leader>s <C-w>s

"switching to last window
nnoremap <leader>p <C-w>p

"navigation over splits
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

colorscheme mustang
set t_Co=256

let g:CommandTMaxHeight=20

if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd FileType make set noexpandtab
endif

nmap <leader>v :tabedit $MYVIMRC<cr>

augroup filetype
  au! BufRead,BufNewFile *Makefile* set filetype=make
  au! BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby
  au! BufNewFile,BufRead *.json set ft=javascript
augroup END

