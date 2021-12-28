-- ensure packer is available
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- theme & UI
  use 'itchyny/lightline.vim'
  use 'projekt0n/github-nvim-theme'

  -- comment toggling
  use 'tomtom/tcomment_vim'

  -- autocomplete
  -- use 'neoclide/coc.nvim', {'branch': 'release'}
  -- use 'neovim/nvim-lspconfig'

  -- async builds
  use 'neomake/neomake'

  -- languages
  use 'ollykel/v-vim'

  use 'ntpeters/vim-better-whitespace'
  -- use 'jremmen/vim-ripgrep'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
