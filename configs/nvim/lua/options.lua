------------------------------------------------------------------------------
-- General
------------------------------------------------------------------------------

local opt = vim.opt
local o = vim.o
local g = vim.g
local cmd = vim.cmd

cmd[[set title titlestring=%{substitute(getcwd(),'^.*/','','')}]]

opt.updatetime = 500

opt.signcolumn = 'yes' -- always show, so there's no jitter when it toggles
opt.compatible = false
opt.hidden = true
opt.number = true
opt.cmdheight = 1

-- syntax highlighting
opt.termguicolors = true
g.syntax_on = true

-- show existing tab with 2 spaces width
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
g.smartindent = true

-- don't wrap lines
opt.wrap = false

-- enable mouse support
o.mouse = 'a'

-- undo
o.undofile = true
o.undodir = '~/.local/share/nvim/undo'

-- highlight current line
o.cursorline = true

-- show mathing parens/brackets/braces
o.showmatch = true

-- search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.wrapscan = true

-- y and and paste with system clipboard
opt.clipboard = 'unnamedplus'


-- Automatically re-read file if a change was detected outside of vim
opt.autoread = true

-- don't lose selection on indenting
cmd[[xnoremap > >gv]]
cmd[[xnoremap < <gv]]

-- sane visual mode pasting
cmd[[xnoremap <expr> p 'pgv"'.v:register.'y`>']]
