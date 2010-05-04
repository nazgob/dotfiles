set nocompatible

syntax enable
filetype indent on
set et
set sw=2
set smarttab
map <f2> :w\|!ruby1.9.1 %<cr>
map <f3> :w\|!perl %<cr>

set backspace=2

set ruler
set number
set cul
set incsearch
set ignorecase
set smartcase
set hlsearch

colorscheme desert

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
