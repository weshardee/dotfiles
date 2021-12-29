------------------------------------------------------------------------------
-- General
------------------------------------------------------------------------------

local o = vim.o
local cmd = vim.cmd

cmd[[set title titlestring=%{substitute(getcwd(),'^.*/','','')}]]

o.termguicolors = true
o.compatible = false
o.number = true
o.termguicolors = true

-- show existing tab with 2 spaces width
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true

-- enable mouse support
o.mouse = 'a'

-- undo
o.undofile = true
o.undodir = '~/.local/share/nvim/undo'

-- highlight current line
o.cursorline = true

-- show mathing parens/brackets/braces
o.showmatch = true

-- highlight as we search
o.incsearch = true
o.hlsearch = true

-- y and and paste with system clipboard
o.clipboard = 'unnamed'

-- ignore case when searching, unless the string has an uppercase letter
o.ignorecase = true
o.smartcase = true

-- Automatically re-read file if a change was detected outside of vim
o.autoread = true

-- don't lose selection on indenting
cmd[[xnoremap > >gv]]
cmd[[xnoremap < <gv]]

-- sane visual mode pasting
cmd[[xnoremap <expr> p 'pgv"'.v:register.'y`>']]
