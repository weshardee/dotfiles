-------------------------------------------------------------------------------
-- PLUGINS
-------------------------------------------------------------------------------

local fn = vim.fn
local execute = vim.api.nvim_command
local add = require('cmd').add

-- bootstrap packer on new systems
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
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

local use = require('packer').use
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

	-- 
	-- critical QoL improvements
	--

  use 'tpope/vim-commentary'
  use {
    'rmagatti/auto-session',
    config = function() require('auto-session').setup({}) end
  } 
	-- TODO nvim lua equivalent use 'rhysd/clever-f.vim'

  -- 
	-- theme
	--
	
  use 'nvim-treesitter/nvim-treesitter'
  use 'folke/lsp-colors.nvim'
  -- use {
		-- 'Mofiqul/dracula.nvim',
		-- opt = false,
		-- config = function()
			-- vim.cmd [[colorscheme dracula]]
		-- end
	-- }
	use {
		'joshdick/onedark.vim', 
		config = function() 
			vim.cmd [[colorscheme onedark]] 
		end
	}

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
        n = {
          ["<Esc>"] = require('telescope.actions').close
        }
      }
    },
    config = function()
			local add = require('cmd').add
      add {
				'Telescope: find files',
				'n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>"}
      add { 'Telescope: find files', 'n', ';', "<cmd>lua require('telescope.builtin').find_files()<cr>" }
      add { 'Telescope: find files', 'n', '<C-p>', "<cmd>lua require('telescope.builtin').find_files()<cr>" }
      add { 'Telescope: grep', 'n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>" }
      add { 'Telescope: grep', 'n', '\'', "<cmd>lua require('telescope.builtin').live_grep()<cr>" }
      add { 'Telescope: find string', 'n', '<leader>fs', "<cmd>lua require('telescope.builtin').grep_string()<cr>" }
      add { 'Telescope: find buffer', 'n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>" }
      add { 'Telescope: find help', 'n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>" }
      
			add { 'Telescope: find definition', 'n', '<leader>fd', "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>" }
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
				options = {
					component_separators = { left = '', right = ''},
					section_separators = { left = '', right = ''},
					disabled_filetypes = {'SidebarNvim'},
				},
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


	--
	-- languages
	--
  
  -- use {
		-- 'Tetralux/odin.vim',
  --   ft = {'odin'},
		-- config = function()
			-- require('odin.vim').setup()
		-- end
  -- }

	use {'sheerun/vim-polyglot'}

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      local nvim_lsp = require('lspconfig')

      -- Use an on_attach function to only map the following keys
      -- after the language server attaches to the current buffer
      local on_attach = function(client, bufnr)
				local add = require('cmd').add
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

        -- Enable completion triggered by <c-x><c-o>
        buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        add { 'Lsp: goto declaration', 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {}, buf_set_keymap }
        add { 'Lsp: goto definition', 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {}, buf_set_keymap }
        add { 'Lsp: show hover', 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {}, buf_set_keymap }
        add { 'Lsp: goto implementation', 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {}, buf_set_keymap }
        add { 'Lsp: signature help', 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {}, buf_set_keymap }
        add { 'Lsp: add workspace folder', 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', {}, buf_set_keymap }
        add { 'Lsp: remove workspace folder', 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', {}, buf_set_keymap }
        add { 'Lsp: list workspace folders', 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', {}, buf_set_keymap }
        add { 'Lsp: show type definition', 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', {}, buf_set_keymap }
        add { 'Lsp: rename', 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {}, buf_set_keymap }
        add { 'Lsp: code action', 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {}, buf_set_keymap }
        add { 'Lsp: show references', 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {}, buf_set_keymap }
        add { 'Lsp Diagnostics: open', 'n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {}, buf_set_keymap }
        add { 'Lsp Diagnostics: goto prev', 'n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', {}, buf_set_keymap }
        add { 'Lsp Diagnostics: goto next', 'n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', {}, buf_set_keymap }
        add { 'Lsp Diagnostics: set location list', 'n', '<space>z', '<cmd>lua vim.diagnostic.setloclist()<CR>', {}, buf_set_keymap }
        add { 'Lsp: format buffer', 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {}, buf_set_keymap }
      end

      require'lspconfig'.vls.setup {
        cmd = {'vls'},
        on_attach = on_attach,
      }

			require'lspconfig'.ols.setup {
				cmd = {'/Users/wes/dev/ols/ols'},
				on_attach = on_attach,
			}

      -- TODO lua https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/
    end
  }
 
  -- async builds
  -- use {
  --   'neomake/neomake',
  --   config = function()
			-- local add = require('cmd').add
  --     -- add { 'Make: project', 'n', 'M', '<cmd>Neomake!<cr>' }
  --     -- vim.cmd[[let g:neomake_open_list = 2]]
  --   end
  -- }

	--
	-- under evaluation
	-- 

	use {
		'tpope/vim-vinegar',
		config = function()
			vim.cmd[[let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+']]
		end
	}

	use {
		'famiu/bufdelete.nvim',
		config = function()
			local add = require('cmd').add
			add { 'Buffer: close & keep window', 'n', '<leader>w', '<cmd>Bdelete<cr>' }
		end
	}

	use {
    'simrat39/lsp-trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

	-- use 'phaazon/hop.nvim'


	-- bars
	-- use {
	-- 	'romgrk/barbar.nvim',
	-- 	requires = {'kyazdani42/nvim-web-devicons'}
	-- }
	-- use 'akinsho/bufferline.nvim'

	-- statusbars
	-- use 'feline-nvim/feline.nvim'
	
	-- sidebar
	-- use {
	-- 	'sidebar-nvim/sidebar.nvim',
	-- 	config = function()
	-- 		local sidebar = require("sidebar-nvim")
	-- 		local opts = {open = true}
	-- 		sidebar.setup(opts)
	-- 	end
  -- }
	--
	-- more powerful alternative to NeoMake... maybe
	use {
		'skywind3000/asyncrun.vim',
		config = function()
			vim.g.asyncrun_open = 6
			vim.g.asyncrun_bell = 1
		end
	}
end)


