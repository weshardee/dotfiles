------------------------------------------------------------------------------
-- Mappings
------------------------------------------------------------------------------

local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- move lines up/down
map('n', '<A-j>', ':m .+1<CR>==', default_opts)
map('n', '<A-k>', ':m .-2<CR>==', default_opts)
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', default_opts)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', default_opts)
map('v', '<A-j>', ":m '>+1<CR>gv=gv'", default_opts)
map('v', '<A-k>', ":m '<-2<CR>gv=gv'", default_opts)

-- TODO open config files
-- map('n', '<leader>fvs', ':w<CR>:files ~/.config/nvim/<CR>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)

-- close buffer
map('n', '<leader>w', ':bd!<CR>', default_opts)

-- close all windows and exit from neovim
map('n', '<leader>q', ':qa!<CR>', default_opts)

-- make
-- nnoremap M :make<CR>', default_opts)
-- autocmd FileType rust nnoremap M :make run<CR>', default_opts)
-- autocmd FileType zig nnoremap M :make run<CR>', default_opts)
-- autocmd FileType vlang nnoremap M :Neomake!<CR>', default_opts)

-- comment toggling
map('n', '<C-/>', 'gcc', {})
map('v', '<C-/>', 'gc', {})
map('n', '<leader>/', 'gcc', {})
map('v', '<leader>/', 'gc', {})

-- Quick window switching
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-l>', '<C-w>l', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
-- nmap <C-h> <C-w>h
-- nmap <C-l> <C-w>l
-- nmap <C-j> <C-w>j
-- nmap <C-k> <C-w>k

-- clear search
cmd[[nnoremap <silent><CR> :noh<CR><CR>]]
cmd[[nnoremap <silent><esc> :noh<return><esc>]]
cmd[[nnoremap <silent><esc>^[ <esc>^[]]
