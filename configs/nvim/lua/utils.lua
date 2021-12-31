local utils = {}

function utils.map(mode, trigger, action, opts)
	opts = opts or { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, trigger, action, opts)
end

return util 
