" Vim Config - Minimal
" ---------------------

" Set compatibility to Vim only.
set nocompatible

"Always show current position
set ruler

" Turn on syntax highlighting.
syntax on

"Plugins
call plug#begin()
"used to add comments
Plug 'scrooloose/nerdcommenter'
call plug#end()

let g:indentLine_char = '|'

" Turn off modelines
set modelines=0

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Display options
set showmode
set showcmd
set cmdheight=1

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number
highlight LineNr ctermfg=1 ctermbg=0

" Set status line display
set laststatus=2
hi User1 ctermfg=none ctermbg=0
hi User2 ctermfg=1 ctermbg=none
hi User3 ctermfg=0 ctermbg=1
hi User4 ctermfg=1 ctermbg=0
hi User5 ctermfg=6 ctermbg=none
hi User6 ctermfg=0 ctermbg=6
hi User7 ctermfg=0 ctermbg=none
hi User8 ctermfg=6 ctermbg=0
hi User9 ctermfg=none ctermbg=none

set statusline=
set statusline+=%2*%3*%f%4*
set statusline+=\ %1*\ %1*%{mode()}
set statusline+=%1*\ %m%7*
set statusline+=%9*%=
set statusline+=\ %7*%1*\ %v:%l\/%L
set statusline+=\ %8*%6*\ %Y\ %5*

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" timeout
set ttimeout
set ttimeoutlen=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

"personal settings
set noswapfile
set undodir=~/.vim/undodir
set undofile

" TextEdit might fail if hidden is not set.
set hidden

" Store info from no more than 100 files at a time, 9999 lines of text
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

"auto and smart indentation
set ai
set si

"Auto tabs for certain code
set smarttab

"so sounds when i reach top or bottom
set noerrorbells

autocmd vimenter * silent! lcd %:p:h

""KEYBINDINGS

"leader key
"nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://fish<CR>

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Copy Paste Commands
vnoremap <Leader>cp "+y
map <leader>cv "+P

"new keybinding for escape
inoremap jk <esc>
"vnoremap jk <esc>

"Similar to nerd tree
map <C-n> :Lex<CR>
