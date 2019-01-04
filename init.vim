if &compatible
  set nocompatible
endif

" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

" Setup dein {{{

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/echodoc.vim')
  call dein#add('mhinz/vim-sayonara')
  call dein#add('drzel/vim-line-no-indicator')

" syntax
  call dein#add('othree/html5.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('elzr/vim-json')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('ap/vim-css-color')
  call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})

" git
  call dein#add('tpope/vim-fugitive')
  call dein#add('chemzqm/vim-easygit')
  call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
  call dein#add('rhysd/committia.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('lambdalisue/gina.vim')
  call dein#add('junegunn/gv.vim')

" explorer
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('eugen0329/vim-esearch')
  call dein#add('nixprime/cpsm', {'build': 'PY3=ON ./install.sh'})
  call dein#add('junegunn/fzf')

" text manipulator
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('MartinLafreniere/vim-PairTools')

" emmet
  call dein#add('mattn/emmet-vim')

" formatter
  call dein#add('sbdchd/neoformat')

" deoplete
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/deol.nvim')

" denite
  call dein#add('Shougo/denite.nvim')
  call dein#add('chemzqm/denite-git')
  call dein#add('chemzqm/denite-extra')
  call dein#add('neoclide/todoapp.vim')

" markdown
  call dein#add('junegunn/goyo.vim')
  call dein#add('amix/vim-zenroom2')

" support
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('sjl/vitality.vim')
  call dein#add('sjl/gundo.vim')
  call dein#add('ryanoasis/vim-devicons')

" snippets
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')

" theme
  call dein#add('mhartington/oceanic-next')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" }}}

" System Settings {{{

" Neovim Settings
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

" Theme Settings
colorscheme OceanicNext
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
"let g:oceanic_next_highlight_current_line = 1

" indentLine Settings
let g:indentLine_setColors = 0

" vim-javascript Settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" editorconfig Settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" git Settings
set signcolumn=yes
let g:conflict_marker_enable_mappings = 0
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'

" vim-airline Settings
let g:webdevicons_enable_airline_statusline = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mike#enabled = 1
set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols.branch = ''
let g:airline_theme='oceanicnext'
let g:airline#extensions#branch#format = 0
let g:airline_detect_spelllang=0
let g:airline_detect_spell=0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_y = ''
let g:airline_section_z = '%{LineNoIndicator()} :%2c'
let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '_']
let g:airline_mode_map = {
      \ 'n'  : '',
      \ 'i' : '',
      \ 'R' : '',
      \ 'v' : '',
      \ 'V' : '',
      \ 'c' : '',
      \ 's' : '',
      \ 'S' : '',
      \ ''  : '',
      \ 't' : '',
      \}
let g:airline#extensions#tabline#buffer_idx_format = {
      \ '0': '0 ',
      \ '1': '1 ',
      \ '2': '2 ',
      \ '3': '3 ',
      \ '4': '4 ',
      \ '5': '5 ',
      \ '6': '6 ',
      \ '7': '7 ',
      \ '8': '8 ',
      \ '9': '9 ',
\}
cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'

" MultiCursor Settings
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" }}}
