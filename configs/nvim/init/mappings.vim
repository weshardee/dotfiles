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

" save buffer
nnoremap <silent><leader>s :w<CR>

" close buffer
nnoremap <silent>q :bd<CR>

" make
nnoremap M :make<CR>
autocmd FileType rust nnoremap M :make run<CR>
autocmd FileType zig nnoremap M :make run<CR>

" comment toggling
map <leader>/ gcc
vmap <leader>/ gc
map <C-/> gcc
vmap <C-/> gc

" fuzzy search workspace
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> ; :Files<CR>

" fuzzy search open buffers
nnoremap <silent> <leader>fb :Buffers<CR>

" search in workspace files
nnoremap <leader>ft :Rg<CR>
nnoremap ' :Rg<CR>

" search lines in current buffer
nnoremap <leader>fb :BLines<CR>

" ranger
nnoremap <leader>r :Ranger<CR>

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

" clear search on return
nnoremap <silent> <CR> :noh<CR><CR>

" clear search on esc
nnoremap <silent> <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" code analysis
nnoremap <leader>dd <Plug>(coc-definition)
nnoremap <leader>di <Plug>(coc-implementation)
nnoremap <leader>dr <Plug>(coc-references)
