source ~/.config/nvim/init/plugins.vim
source ~/.config/nvim/init/theme.vim
source ~/.config/nvim/init/general.vim
source ~/.config/nvim/init/mappings.vim
source ~/.config/nvim/init/fzf.vim

"------------------------------------------------------------------------------
" Neoformat 

" " format on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END
"
" let g:autofmt_autosave = 1

"------------------------------------------------------------------------------
" reload config on change

augroup myvimrc
  au!
  au BufWritePost init.vim,.vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
