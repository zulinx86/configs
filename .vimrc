" Show line number
set number

" Enable syntax highlight
syntax enable

" How many columns a tab character (\t) is worth
set tabstop=8

" How many columns a level of indentation is worth
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

" enable clipboard
set clipboard+=unnamed

" Hidden characters
set listchars=tab:»\ ,eol:↲
set list

" Highlight
hi NonText ctermfg=DarkGrey
hi SpecialText ctermfg=DarkGrey
hi LineNr ctermfg=DarkGrey

