"------------------------------------------------------------------------------
" plugins

call plug#begin('~/.vim/plugged')
  " theme
  Plug 'joshdick/onedark.vim'

  " comment toggling
  Plug 'tomtom/tcomment_vim' 

  " fuzzy search 
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " autocomplete
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'fannheyward/coc-rust-analyzer'

  " expand (+) or shrink (_) selection
  Plug 'terryma/vim-expand-region'

  " status bar
  Plug 'itchyny/lightline.vim'

  " file navigation
  Plug 'rbgrouleff/bclose.vim' "pre-req for ranger.vim
  Plug 'francoiscabrol/ranger.vim'

  " git 
  Plug 'lambdalisue/gina.vim'
  " Plug 'wangsongiam/vim-git-it'

  " async compilation
  " Plug 'tpope/vim-dispatch'

  " autoclose brackets on 'enter'
  " Plug 'rstacruz/vim-closer'
 
  " formatting code
  " Plug 'sbdchd/neoformat'

  " languages
  Plug 'tikhomirov/vim-glsl'
  Plug 'cespare/vim-toml'
  " Plug 'rust-lang/rust.vim'

call plug#end()
