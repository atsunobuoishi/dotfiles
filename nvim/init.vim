" Load python3
let g:python_host_prog = $PYENV_ROOT . '/versions/3.6.1/bin/python'
let g:python3_host_prog = $PYENV_ROOT . '/versions/3.6.1/bin/python3'

"dein Scripts-----------------------------
if &compatible
  set nocompatible   " Be iMproved
endif

let s:dein_dir = expand('$XDG_CACHE_HOME/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Required:
execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p:gs?\\?/?')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml('~/dotfiles/nvim/dein.toml',          {'lazy': 0})
  call dein#load_toml('~/dotfiles/nvim/dein_lazy.toml',     {'lazy': 1})
  "call dein#load_toml('~/dotfiles/nvim/dein_neo.toml',      {'lazy': 1})
  "call dein#load_toml('~/dotfiles/nvim/dein_python.toml',   {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

set termguicolors
colorscheme iceberg

" Show column number
set number

set cursorline

set clipboard+=unnamedplus

inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
