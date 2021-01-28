"------------------------------------------------------------------------------
" fzf

" use fzf in a modal
let g:fzf_layout = { 
\  'window': {
\    'width': 0.9,
\    'height': 0.7,
\    'highlight': 'Comment',
\    'rounded': v:false 
\  } 
\}

" use silver searcher and respect gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" try to launch fzf if opening a dir
autocmd VimEnter * if isdirectory(expand("<amatch>")) | exe 'FZF! '.expand("<amatch>") | endif

