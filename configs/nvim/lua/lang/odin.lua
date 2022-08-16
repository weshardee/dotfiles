-------------------------------------------------------------------------------
-- Odin
-------------------------------------------------------------------------------

vim.cmd [[ set makeprg=./build.sh ]]
vim.cmd [[ set errorformat=%f(%l:%c)\ %m,%-G%.%# ]]
-- vim.cmd [[
	-- let g:neomake_enabled_makers = ['odin']
	-- let g:neomake_odin_enabled_makers = ['odin']
	-- let g:neomake_odin_maker = {
    -- \ 'exe': './build.sh',
    -- \ 'errorformat': '%E%f:%l:%c:\ %trror:\ %m,%E%f:%l:%c:\ %tarning:\ %m,%E%f:%l:%c:\ builder %trror:\ %m,%C%.%#',
    -- \ }
-- ]]

-- TODO don't build if there are active language server errors... 
--      jump to the first one instead
-- vim.cmd[[autocmd FileType odin nnoremap M :Neomake<CR>]]
vim.cmd[[autocmd FileType odin nnoremap M :make<CR>]]
vim.cmd[[autocmd QuickFixCmdPost [^l]* nested cwindow]]
vim.cmd[[autocmd QuickFixCmdPost    l* nested lwindow]]

-- treesitter config for V
-- TODO remove once this is added to nvim-treesitter (submit PR myself?)
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.odin = {
  install_info = {
    url = "https://github.com/Platin21/odin-treesitter", -- local path or git repo
    files = {"src/parser/runtime.odin", "src/scanner/runtime.odin"}
  },
  filetype = "odin", -- if filetype does not agrees with parser name
}

vim.cmd[[nnoremap <leader>ols :LspRestart ols<CR>]]
