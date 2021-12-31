local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local execute = vim.api.nvim_command
local map = vim.api.nvim_set_keymap

-- bootstrap packer on new systems
if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

-- Auto source when there are changes in plugins.lua
vim.cmd([[
	augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

	-- 
	-- critical QoL improvements
	--

	use 'rhysd/clever-f.vim'
  use 'tomtom/tcomment_vim'
  use {
    'rmagatti/auto-session',
    config = function() require('auto-session').setup({}) end
  } 

  -- 
	-- theme
	--
	
  use 'nvim-treesitter/nvim-treesitter'
  use 'folke/lsp-colors.nvim'
  use {
		'Mofiqul/dracula.nvim',
		opt = false,
		config = function()
			vim.cmd[[colorscheme dracula]]
		end
	}
	-- TODO remove?
	-- use {
	-- 	"projekt0n/circles.nvim",
	-- 	requires = {{"kyazdani42/nvim-web-devicons"}, },
	-- 	config = function()
	-- 		require("circles").setup()
	-- 	end
	-- }

	--
  -- project navigation
	--
	
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make", 
      }, 
      {'nvim-lua/plenary.nvim'}
    },
    defaults = {
      mappings = {
        i = {
          ["<Esc>"] = require('telescope.actions').close
        }
      }
    },
    config = function()
      map = vim.api.nvim_set_keymap
      opts = {silent = true, noremap = true}
      map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map('n', ';', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map('n', '<C-p>', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
      map('n', '\'', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
      map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
      map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
      map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
    end
  }

	--
	-- UI
  -- 
  
	use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup({
        sections = {
          lualine_a = {'filename'},
          lualine_b = {},
          lualine_c = {},
          lualine_y = {},
          lualine_z = {'location'},
        },
        tabline = {
          lualine_a = {'buffers'},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        extensions = {'quickfix'},
      })
    end
  }

	use {
		'sidebar-nvim/sidebar.nvim',
		config = function()
			local sidebar = require("sidebar-nvim")
			local opts = {open = true}
			sidebar.setup(opts)
		end
  }

	--
	-- languages
	--
  
	-- v syntax highlighting
  -- TODO replace with treesitter when v support is better
  use {
    -- 'ollykel/v-vim',
    'cheap-glitch/vim-v',
    ft = {'v', 'vsh', 'vlang'}
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      local nvim_lsp = require('lspconfig')

      -- Use an on_attach function to only map the following keys
      -- after the language server attaches to the current buffer
      local on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

        -- Enable completion triggered by <c-x><c-o>
        buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        local opts = { noremap=true, silent=true }

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
        buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        buf_set_keymap('n', '<space>z', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
        buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
      end

      require'lspconfig'.vls.setup {
        cmd = {'vls'},
        on_attach = on_attach,
      }

      -- TODO lua https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/
    end
  }
 
  -- async builds
  use {
    'neomake/neomake',
    config = function()
      local map = vim.api.nvim_set_keymap
      map('n', 'M', ':Neomake!<CR>', {silent = true, noremap = true})
      vim.cmd[[let g:neomake_open_list = 2]]
    end
  }

	-- TODO evaluate if I really want this
	use {
    'simrat39/lsp-trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

end)


