set number
set termguicolors
set noshowmode

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

" use ranger when opening a directory
" let g:ranger_replace_netrw = 1 

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

" yand and paste with system clipboard
set clipboard=unnamed

" don't lose selection on indenting
xnoremap > >gv
xnoremap < <gv

" TODO test
augroup OpenQuickfixWindowAfterMake
    autocmd QuickFixCmdPost [^l]* nested cwindow
    autocmd QuickFixCmdPost    l* nested lwindow
augroup END

set title titlestring=%{substitute(getcwd(),'^.*/','','')}

let g:rustfmt_autosave = 1
