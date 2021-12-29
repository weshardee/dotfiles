vim.cmd([[
" autoformat on save
let g:v_autofmt_bufwritepre = 1

set makeprg="v run m.vsh"
let g:neomake_enabled_makers = ['vsh']
let g:neomake_vlang_enabled_makers = ['vsh']
let g:neomake_vsh_maker = {
      \ 'exe': 'v',
      \ 'args': ['run', './m.vsh'],
      \ 'errorformat': '%f:%l:%c:\ %trror:\ %m,%f:%l:%c:\ %tarning:\ %m,%f:%l:%c:\ builder %trror:\ %m',
      \ }
let g:neomake_vet_maker = {
      \ 'exe': 'v',
      \ 'args': ['vet'],
      \ }
      " \ 'errorformat': '%f:%l:%c %m',
]])
