call plug#begin('~/.vim/vim-plug')
Plug 'lervag/vimtex'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tpope/vim-fugitive'
call plug#end()


set nocompatible

" solarized theme
syntax enable
colorscheme solarized
set background=dark

set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display line numbers on the left
set number

" Incremental search, hit '<CR>' to stop.
set incsearch

" Shows the current line number at the bottom right of the screen.
set ruler

set noswapfile

set tags=./.git/tags

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:vimtex_compiler_latexmk = {'callback' : 0}


"------------------------------------------------------------
" Indentation options

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd FileType python set softtabstop=2
autocmd FileType python set shiftwidth=2
autocmd FileType python set textwidth=79

autocmd FileType latex set textwidth=69

"------------------------------------------------------------
" Mappings
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
