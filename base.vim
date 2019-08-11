" Base Vim config

filetype plugin indent on
syntax enable
set termguicolors
set mouse=a
set noswapfile
filetype on
set number
set numberwidth=1
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set autoread
set fillchars+=vert:│
set cursorline
set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Theme Settings
colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

