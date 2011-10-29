set t_Co=256

" Internals
set nocompatible
set noswapfile
set autoread
set nu
set esckeys! " Prevents delay when pressing ESC followed by insert

" Spacing and indentation
set autoindent
set tabstop=2
set expandtab

" show trailing whitespace chars
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" auto remove whitespace on buffer save
"autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" Searching
set showmatch
set incsearch
set ruler
set hlsearch
set ignorecase

" Themes
syntax on
colorscheme desert256

" Ctags
"let g:ctags_path=/usr/local/bin/
"let g:ctags_statusline=1

call pathogen#infect()
