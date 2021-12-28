------------------------------------------------------------------------------
-- General
------------------------------------------------------------------------------

vim.cmd([[
set nocompatible
set number
set termguicolors
set noshowmode
syntax enable
filetype plugin on

" show file path in status line
set statusline+=%F

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" enable mouse support
set mouse=a

" autosave & watch for file changes
set autowriteall
set autoread
autocmd TextChanged,TextChangedI <buffer> silent write

" undo
set undofile
set undodir=~/.local/share/nvim/undo

" highlight current line
set cursorline

" redraw only when needed
set lazyredraw

" show mathing parens/brackets/braces
set showmatch

" highlight as we search
set incsearch
set hlsearch

" y and and paste with system clipboard
set clipboard=unnamed

" don't lose selection on indenting
xnoremap > >gv
xnoremap < <gv

set title titlestring=%{substitute(getcwd(),'^.*/','','')}

" sane visual mode pasting
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread
]])
