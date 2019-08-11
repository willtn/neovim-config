if &compatible
  set nocompatible
endif

" Setup dein {{{

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')

" visual
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

" language
  call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release'})

" syntax
  call dein#add('othree/html5.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('elzr/vim-json')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('ap/vim-css-color')
  call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})
  call dein#add('neovimhaskell/haskell-vim')

" git
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('rhysd/committia.vim')
  call dein#add('tpope/vim-git')
  call dein#add('junegunn/gv.vim')

" file explorer
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('eugen0329/vim-esearch')
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

" text manipulator
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('MartinLafreniere/vim-PairTools')

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
  call dein#add('junegunn/goyo.vim')

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

" }}}

source ~/.config/nvim/base.vim
source ~/.config/nvim/bindings.vim
source ~/.config/nvim/plugins.vim

