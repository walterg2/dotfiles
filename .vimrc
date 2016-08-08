execute pathogen#infect()

set nu
set sw=2
set ts=2
set softtabstop=2
set expandtab
set nocompatible
set hlsearch
set showmatch
set incsearch
set history=1000
set background=dark
set noswapfile
set hidden
set ruler
set backspace=indent,eol,start    " Make backspace key act normal
set nowrap
set splitbelow
set splitright
syntax on
filetype plugin indent on

au BufNewFile,BufRead *.podspec setf ruby
au BufNewFile,BufRead Podfile setf ruby
au BufNewFile,BufRead *.coffee setf javascript
au BufNewFile,BufRead *.us setf html
au FileType, BufRead *.md setf markdown

let mapleader = ","
vmap <leader>c <esc>:'<,'>:CoffeeCompile<cr>     
map <leader>c :CoffeeCompile<cr>                 

nmap ,f :!clear && rake features<cr>
nmap gpr :!clear && git pull --rebase<cr>
nmap ,w :!clear && rake wip<cr>
nmap ,t :!clear && rake<cr>

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --hidden

  " Use ag in CtrlP for listing files. Lightning fast and respects
  let g:ctrlp_user_command = 'ag %s -l -i --files-with-matches --nocolor --nogroup  -g "" --ignore "./docs/api"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

