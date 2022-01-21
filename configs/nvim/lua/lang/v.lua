-------------------------------------------------------------------------------
-- V
-------------------------------------------------------------------------------

vim.cmd[[autocmd FileType vlang set commentstring=//%s]]

vim.cmd [[
	set makeprg="v run m.vsh"
	let g:neomake_enabled_makers = ['vsh']
	let g:neomake_vlang_enabled_makers = ['vsh']
	let g:neomake_vsh_maker = {
    \ 'exe': 'v',
    \ 'args': ['run', './m.vsh'],
    \ 'errorformat': '%E%f:%l:%c:\ %trror:\ %m,%E%f:%l:%c:\ %tarning:\ %m,%E%f:%l:%c:\ builder %trror:\ %m,%C%.%#',
    \ }
]]

-- TODO don't build if there are active language server errors... 
--      jump to the first one instead
vim.cmd[[autocmd FileType vlang nnoremap M :Neomake<CR>]]

-- treesitter config for V
-- TODO remove once this is added to nvim-treesitter (submit PR myself?)
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.vlang = {
  install_info = {
    url = "~/dev/tree-sitter-v", -- local path or git repo
    files = {"src/parser.c", "src/scanner.c"}
  },
  filetype = "v", -- if filetype does not agrees with parser name
  used_by = {"vlang", "vsh"} -- additional filetypes that use this parser
}

vim.cmd[[nnoremap <leader>vls :LspRestart vls<CR>]]
