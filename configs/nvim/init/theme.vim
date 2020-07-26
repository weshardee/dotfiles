"-----------------------------------------------------------------------------
" theme

set background=dark
colorscheme onedark

let g:lightline = { 
      \  'colorscheme': 'onedark', 
      \  'active': {
      \    'left': [ ['mode', 'paste'], [], ['readonly', 'filename'] ],
      \    'right': [ [ 'lineinfo' ], [ 'percent' ] ],
      \  },
      \  'component_function': {
      \    'filename': 'LightlineFilename',
      \  },
      \  'separator': { 'left': '', 'right': '' },
      \  'subseparator': {'left': '', 'right': '' },
      \}
      " \  'separator': { 'left': '', 'right': '' },
      " \ 'separator': { 'left': '', 'right': '' },
      " \ 'subseparator': { 'left': '', 'right': '' }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  " let modified = &modified ? ' •' : ''
  let modified = &modified ? ' [+]' : ''
  return filename . modified 
endfunction
