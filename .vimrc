" Show line number
set number

" Enable syntax highlight
syntax enable

" How many spaces are displayed as tab
set tabstop=4

" How many spaces are inserted when indented
set shiftwidth=4

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

" enable clipboard
set clipboard+=unnamed
