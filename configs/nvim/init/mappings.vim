noremap <Space> <Nop>
let mapleader = "\<Space>" 

" move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" open config files
nnoremap <leader>fvs :w<CR>:Files ~/.config/nvim/<CR>

" reload config
nnoremap <silent><leader>fvr :w<CR>:so ~/.config/nvim/init.vim<CR>
  
" make
nnoremap M :make<CR>
set makeprg=./m

" comment toggling
map <leader>/ gcc
vmap <leader>/ gc

" git shortcuts
nnoremap <leader>gs :Gina status -s<CR>
nnoremap <leader>gc :Gina commit<CR>
nnoremap <leader>gd :Gina diff<CR>
nnoremap <leader>gb :Gina blame<CR>
nnoremap <leader>gl :Gina log<CR>
vnoremap <leader>gw :Gina browse :<CR>

" close git buffers
call gina#custom#mapping#nmap('status', 'q', ':bd<CR>', {'noremap': 1, 'silent': 1})
call gina#custom#mapping#nmap( 'diff', 'q', ':bd<CR>', {'noremap': 1, 'silent': 1})
call gina#custom#mapping#nmap( 'blame', 'q', ':bd<CR>', {'noremap': 1, 'silent': 1}) 
call gina#custom#mapping#nmap( 'log', 'q', ':bd<CR>', {'noremap': 1, 'silent': 1})
call gina#custom#mapping#nmap( 'commit', 'q', ':q!<CR>', {'noremap': 1, 'silent': 1})
call gina#custom#mapping#nmap( 'show', 'q', ':bd<CR>', {'noremap': 1, 'silent': 1})

