set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'airblade/vim-rooter'
Bundle 'nazgob/grb256'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-ruby/vim-ruby'

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
set listchars=tab:▸\ ,eol:¬

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

