------------------------------------------------------------------------------
-- Mappings
------------------------------------------------------------------------------

local cmd = vim.cmd

function map(mode, trigger, action, opts)
  opts = opts or { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, trigger, action, opts)
end

vim.g.mapleader = ' '

-- move lines up/down
map('n', '<A-j>', ':m .+1<CR>==')
map('n', '<A-k>', ':m .-2<CR>==')
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
map('v', '<A-j>', ":m '>+1<CR>gv=gv'")
map('v', '<A-k>', ":m '<-2<CR>gv=gv'")

-- fast saving with <leader> and s
map('n', '<leader>s', ':w!<CR>')

-- close buffer
map('n', '<leader>w', ':bd!<CR>')

-- close all windows and exit from neovim
map('n', '<leader>q', ':qa!<CR>')

-- make
-- nnoremap M :make<CR>')
-- autocmd FileType rust nnoremap M :make run<CR>')
-- autocmd FileType zig nnoremap M :make run<CR>'

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

-- clear search
cmd[[nnoremap <silent><CR> :noh<CR><CR>]]
cmd[[nnoremap <silent><esc> :noh<return><esc>]]
cmd[[nnoremap <silent><esc>^[ <esc>^[]]

-- fix Y - not sure why this broke
cmd[[nnoremap <silent>Y yy]]

-- TODO reload config 
map("n", "<Leader>so", ":luafile %<CR>", {noremap = true})
