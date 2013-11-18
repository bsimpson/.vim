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
set shiftwidth=2
set foldmethod=indent
set foldlevel=5

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
colorscheme darkburn

" Ctags
"let g:ctags_path=/usr/local/bin/
"let g:ctags_statusline=1

" Spelling (Ctrl+x Ctrl+k)
:set spell

call pathogen#infect()

filetype plugin indent on

" Buffer explorer options
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSplitOutPathName=0  " Don't split the path and file

au BufNewFile,BufRead *.thor set filetype=ruby

" copy partial file path to system clipboard
:nmap fy :let @+ = expand("%")
