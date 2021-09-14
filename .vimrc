" Show line number
set number

" Enable syntax highlight
syntax enable

" How many spaces are displayed as tab
set tabstop=8

" How many spaces are inserted when indented
set shiftwidth=8

" Use the same indent in new line as current line
set autoindent

" Determine indent by the end of the front line
set smartindent

" Set backspace
set backspace=indent,eol,start

" Hightlight line on cursor
set cursorline

" Case-insensitive search when query string contains only lower-case
set ignorecase

" Case-sensitive search when query string contains upper-case
set smartcase

" Hightlight search
set hlsearch

" Erase highlight with double Esc
nnoremap <Esc><Esc> :nohlsearch<CR>

" Incremental search
set incsearch

" Command line completion
set wildmenu

" Show ruler
set ruler

" Enable clipboard
set clipboard+=unnamed

" Hidden characters
set listchars=tab:→\ ,eol:↲
set list

" Highlight
hi NonText ctermfg=235
hi SpecialKey ctermfg=235
hi LineNr ctermfg=235

" Encoding
set encoding=utf-8

" dein
if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
if &runtimepath !~# '/dein.vim'
  execute 'set runtimepath+=' . s:dein_repo_dir
endif

let s:toml = s:dein_dir . '/dein.toml'
let s:lazy_toml = s:dein_dir . '/dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add('Shougo/dein.vim')
  if filereadable(s:toml)
    call dein#load_toml(s:toml, {'lazy': 0})
  endif
  if filereadable(s:lazy_toml)
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
  endif
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
