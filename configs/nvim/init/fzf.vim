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

" fuzzy search workspace
nnoremap <silent> <leader>ff :Files<CR>

" fuzzy search open buffers
nnoremap <silent> <leader>fb :Buffers<CR>

" use silver searcher and respect gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

