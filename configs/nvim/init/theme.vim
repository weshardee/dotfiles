"-----------------------------------------------------------------------------
" theme

set termguicolors
set background=dark
colorscheme onedark

let g:lightline = { 
      \  'colorscheme': 'onedark', 
      \  'active': {
      \    'left': [ [], ['file_path', 'readonly'], [] ],
      \    'right': [ [], [ 'lineinfo', 'percent' ] ],
      \  },
      \  'component_function': {
      \    'file_path': 'LightlineFilename',
      \  },
      \  'separator': { 'left': '', 'right': '' },
      \  'subseparator': {'left': '', 'right': '' },
      \}
      " \  'separator': { 'left': '', 'right': '' },
      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '', 'right': '' }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? @% : '[No Name]'
  let modified = &modified ? ' [+]' : ''
  return filename . modified 
endfunction
