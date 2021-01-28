" for MacVim, install this way
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'fannheyward/coc-rust-analyzer'

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

  " autoclose brackets on 'enter'
  " Plug 'rstacruz/vim-closer'
 
  " formatting code
  " Plug 'sbdchd/neoformat'

  " smooth scrolling
  Plug 'yuttie/comfortable-motion.vim'

  " languages
  Plug 'tikhomirov/vim-glsl'
  Plug 'cespare/vim-toml'
  Plug 'rust-lang/rust.vim'
  Plug 'ziglang/zig.vim'

call plug#end()
