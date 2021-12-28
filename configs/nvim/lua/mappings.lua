------------------------------------------------------------------------------
-- Mappings
------------------------------------------------------------------------------

vim.g.mapleader = ' '

vim.cmd([[
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent>g[ <Plug>(coc-diagnostic-prev)
nmap <silent>g] <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gt <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

" Fuzzy search current project symbols
nnoremap <silent>' :CocList -I -N symbols<CR>

" Fuzzy search current project files
nnoremap <silent>; :CocList files<CR>

" Symbol renaming.
nmap <leader> n <Plug>(coc-rename)

" Automatically remove trailing whitespace
nmap <silent><leader> y :StripWhitespace<CR>

" move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" open config files
nnoremap <leader>fvs :w<CR>:CocList files ~/.config/nvim/<CR>

" reload config
nnoremap <silent><leader>fvr :w<CR>:so ~/.config/nvim/init.vim<CR>

" save buffer
nnoremap <silent><leader>s :w<CR>

" close buffer
nnoremap <silent><leader>w :bd<CR>

" make
" nnoremap M :make<CR>
" autocmd FileType rust nnoremap M :make run<CR>
" autocmd FileType zig nnoremap M :make run<CR>
autocmd FileType vlang nnoremap M :Neomake!<CR>

" comment toggling
map <leader>/ gcc
vmap <leader>/ gc
map <C-/> gcc
vmap <C-/> gc

" file exploration
nnoremap <silent><nowait><leader>e :CocCommand explorer<CR>

" Quick window switching
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" clear search on return
nnoremap <silent> <CR> :noh<CR><CR>

" clear search on esc
nnoremap <silent> <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>

" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent><nowait><leader>r :<C-u>CocList -I symbols<cr>

" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
]])
