set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/vim-handlebars'
Bundle 'kien/ctrlp.vim'
Bundle 'tsaleh/vim-supertab'
Bundle 'airblade/vim-rooter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'whatyouhide/vim-gotham'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'xolox/vim-misc'

function! ToggleBackground()
  if &background == 'dark'
    set background=light
  else
    set background=dark
  endif
endfunction

syntax enable
set background=light

colorscheme solarized

if has('gui_running')
  set t_Co=256
  set guifont=AnonymousPro:h18
  set lines=40 columns=120
else
  set t_Co=256
endif


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
set nobackup
set nowritebackup
set noswapfile
set cpoptions+=$
set nowrap

set autoread
set autowrite

let mapleader = " "

" tmux
let vroom_use_vimux = 1
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>

" Edit this very file
nmap <leader>v :tabedit $MYVIMRC<cr>
" Look for files
nmap <leader>f <c-p>
" Light vs Dark Solarized
map  <leader>n :call ToggleBackground()<cr>
" Clear trailing spaces with F5
noremap <F5> :%s/\s\+$<CR>:w<CR>
" Insert hashrocket with <c-l>
imap <c-l> <space>=><space>
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
" Open/Hide TagBar
nmap <F8> :TagbarToggle<CR>
" Run all specs
map <leader>a :call RunAllSpecs()<CR>

" vim notes
let g:notes_directories = ['~/DropboxPrivate/notes']
let g:notes_suffix = '.txt'

set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.jpg,*.jpeg,*.png,*.xpm,*.gif,*.bmp
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/*,*/log/*,*.log,*/coverage/*
set wildignore+=*.swp,*~,._*

if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

augroup filetype
  au! BufRead,BufNewFile *Makefile* set filetype=make
  au! BufNewFile,BufRead *.json set ft=javascript
  au! BufNewFile,BufRead *.hql set ft=sql
  au! BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,Capfile,config.ru,.railsrc,.irbrc,.pryrc} set ft=ruby
augroup END

filetype plugin indent on

let g:ctrlp_custom_ignore = 'build\|.agility-shared\|.git'

autocmd BufWritePre *.rb :%s/\s\+$//e
