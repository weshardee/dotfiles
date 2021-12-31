-- autoformat on save
-- vim.cmd [[ let g:v_autofmt_bufwritepre = 1 ]]

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

-- TODO don't build if there are active language server errors... just jump to the first one
vim.cmd[[autocmd FileType vlang nnoremap M :Neomake<CR>]]

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.v = {
  install_info = {
    url = "~/dev/tree-sitter-v", -- local path or git repo
    files = {"src/parser.c", "src/scanner.c"}
  },
  filetype = "v", -- if filetype does not agrees with parser name
  used_by = {"vlang", "vsh"} -- additional filetypes that use this parser
}

