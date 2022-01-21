-------------------------------------------------------------------------------
-- MAPS
-------------------------------------------------------------------------------

local add = require('cmd').add

-- this will be our only 'native' keymap - everything else should map through
-- the actions module
vim.api.nvim_set_keymap('', 'F', '<cmd>Commander<cr>', {silent = true})

--
-- buffers
--

add { 'Buffer: save', 'n', '<leader>s', '<cmd>w!<cr>' }
add { 'Buffer: close', 'n', '<leader>w', '<cmd>bd<cr>' }
add { 'Exit', 'n', '<leader>q', '<cmd>wa!<cr><cmd>qa<cr>' }

--
-- editing commands
--

add {
	'Comments: toggle line',
	'n', '<leader>/', 'gcc'
}
add {
	'Comments: toggle selected lines', 
	'v', '<leader>/', 'gc'
}
add {
	'Edit: cut current line',
	'n', 'X', 'Vx'
}

--
-- window navigation
--

add { 'Window: move left', 'n', '<C-h>', '<C-w>h' }
add { 'Window: move right', 'n', '<C-l>', '<C-w>l' }
add { 'Window: move down', 'n', '<C-j>', '<C-w>j' }
add { 'Window: move up', 'n', '<C-k>', '<C-w>k' }

--
-- config helpers
--  

add {
	'Config: source current lua file',
	'n', '<leader>so', '<cmd>luafile %<cr>'
}	

--
-- loc list navigation
--

add {
	'Loc List: next',
	'n', ']l', '<cmd>lnext<cr>' 
}
