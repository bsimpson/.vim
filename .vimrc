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

call pathogen#infect()

" Themes
syntax on
colorscheme darkburn

" Ctags
"let g:ctags_path=/usr/local/bin/
"let g:ctags_statusline=1

" Spelling (Ctrl+x Ctrl+k)
:set spell

filetype plugin indent on

" Buffer explorer options
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSplitOutPathName=0  " Don't split the path and file

au BufNewFile,BufRead *.thor set filetype=ruby

" copy partial file path to system clipboard
:nmap fy :let @+ = expand("%")

" vim-rubytest configuration of test options

" Spork
" let g:rubytest_cmd_test = "bundle exec testdrb %p"
" let g:rubytest_cmd_testcase = "bundle exec testdrb %p -- -n '/%c/'"

" Spring
" let g:rubytest_cmd_test = "bundle exec spring testunit %p"
" let g:rubytest_cmd_testcase = "bundle exec spring testunit %p -n '/%c/'"

" Zeus
let g:rubytest_cmd_test = "zeus test %p"
let g:rubytest_cmd_testcase = "zeus test %p -n '/%c/'"

let g:rubytest_cmd_spec = "bundle exec spec -f specdoc %p"
let g:rubytest_cmd_example = "bundle exec spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "bundle exec cucumber %p"
let g:rubytest_cmd_story = "bundle exec cucumber %p -n '%c'"

" alias :W to :w
command W w

" Allow aligning a key value pair
" AddTabularPattern first_colon /^[^:]*:/r0l1l0

" Ack.vim to use ag instead
let g:ackprg = 'ag --nogroup --nocolor --column'

" :Tidy will format document
command Tidy set ft=html | execute "%!tidy -q -i -html"

" tree view for netrw
let g:netrw_liststyle=3
