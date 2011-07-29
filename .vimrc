" Internals
set nocompatible
set noswapfile
set autoread
set nu

" Spacing and indentation
set autoindent
set tabstop=2
set expandtab

" Highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Searching
set showmatch
set incsearch
set ruler
set hlsearch
set ignorecase

" Themes
syntax on
colorscheme vividchalk

" Ctags
"let g:ctags_path=/usr/local/bin/
"let g:ctags_statusline=1

