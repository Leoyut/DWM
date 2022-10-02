source ~/.config/nvim/keybindings.vim
"source ~/.config/nvim/plugconf.vim
"source ~/.config/nvim/plugconfcoc.vim
source ~/.config/nvim/plugconfother.vim
source ~/.config/nvim/status.vim

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Using plug
Plug 'dylanaraps/wal.vim'

"conquer of completions 
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"previously edited confs in nvim menu
Plug 'mhinz/vim-startify'

"auto pairs
Plug 'jiangmiao/auto-pairs'

"used to add comments
Plug 'scrooloose/nerdcommenter'

"file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"code formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"c nd c++ formatter
Plug 'rhysd/vim-clang-format' 

"for tmux
"Plug 'christoomey/vim-tmux-navigator'

"goyo 
Plug 'junegunn/goyo.vim'

"color scheme
Plug 'morhetz/gruvbox'

"syntax highlighter
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

"catppuccin theme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Initialize plugin system

call plug#end()

"shows present line and numbers
set relativenumber
set number

"splits new pane to right
set splitbelow splitright

"scrolls until 8 lines away 
set scrolloff=8

"so sounds when i reach top or bottom
set noerrorbells

"enable syntax
syntax enable

" always uses spaces instead of tab characters
set expandtab

"removes tabs worth of white space 
set softtabstop=4

"how many columns of whitespace a \t worth
set tabstop=4

"how manu columsn of whitespace a "level of indentation" is worth.
set shiftwidth=4

"Auto tabs for certain code
set smarttab

"line to know on which line im on 
set cursorline

"case insensitive
set ignorecase
set smartcase

" always show signcolumns
"set signcolumn=yes

"auto and smart indentation
set ai
set si

"hilight as  i search 
set incsearch 

"status line
set laststatus=2
set cmdheight=1

" timeout
set ttimeout
set ttimeoutlen=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

"personal settings 
set noswapfile
set undodir=~/.vim/undodir
set undofile

"setting up  termguicolors
"set termguicolors

"Color Settings

"colorscheme wal
"colorscheme catppuccin
"let g:catppuccin_flavour = "mocha"
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

set background=dark
highlight LineNr ctermfg=darkgrey
highlight clear CursorLineNr
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
"vertical line 
highlight VertSplit cterm=NONE ctermfg=NONE ctermbg=NONE 
set fillchars+=vert:│

