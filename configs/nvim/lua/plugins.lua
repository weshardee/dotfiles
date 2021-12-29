local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local execute = vim.api.nvim_command
local map = vim.api.nvim_set_keymap

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

-- Auto source when there are changes in plugins.lua
local au = require("util/au")
au.group("PackerGroup", {{"BufWritePost", "plugins.lua", "source <afile> | PackerCompile profile=true"}})

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- startup time
  use {
    "dstein64/vim-startuptime",
    config = function()
      local map = vim.api.nvim_set_keymap
      map("n", "<Leader>st", ":StartupTime<CR>", {noremap = true})
    end
  }

  -- theme
  use {
    'ful1e5/onedark.nvim',
    opt = false,
    config = function()
      require("onedark").setup({
        -- transparent = true,
        dark_float = false,
        hide_inactive_statusline = true,
        dark_sidebar = false,
        dev = true
      })
    end
  }

  -- telescope & fuzzy finding
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      map = vim.api.nvim_set_keymap
      opts = {silent = true, noremap = true}
      map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map('n', ';', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
      map('n', '\'', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
      map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
      map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
      map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
    end
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup({
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'filename'},
          lualine_c = {},
       },
    })
    end
  }

  -- comment toggling
  use 'tomtom/tcomment_vim'

  -- async builds
  use 'neomake/neomake'

  -- languages
  use 'ollykel/v-vim'

  -- circles
  use {
    "projekt0n/circles.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"kyazdani42/nvim-tree.lua", opt = true}},
    config = function()
      require("circles").setup()
    end
  }

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- LSP
  use 'neovim/nvim-lspconfig'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

end)


