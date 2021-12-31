-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/wes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-session"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["circles.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcircles\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/circles.nvim",
    url = "https://github.com/projekt0n/circles.nvim"
  },
  ["dracula.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme dracula\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    url = "https://github.com/simrat39/lsp-trouble.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nΩ\2\0\0\5\0\19\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\v\0005\3\4\0005\4\3\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\b\0035\4\t\0=\4\n\3=\3\f\0025\3\14\0005\4\r\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\15\0034\4\0\0=\4\b\0034\4\0\0=\4\n\3=\3\16\0025\3\17\0=\3\18\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rquickfix\ftabline\14lualine_x\1\0\0\1\2\0\0\fbuffers\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_c\14lualine_b\14lualine_a\1\0\0\1\2\0\0\rfilename\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neomake = {
    config = { "\27LJ\2\nù\1\0\0\a\0\t\0\0146\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0016\1\0\0009\1\a\1'\3\b\0B\1\2\1K\0\1\0 let g:neomake_open_list = 2\bcmd\1\0\2\fnoremap\2\vsilent\2\18:Neomake!<CR>\6M\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/neomake",
    url = "https://github.com/neomake/neomake"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim∏\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>z,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0y\1\0\6\0\t\0\0156\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\1\0B\2\2\0029\2\3\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4=\1\b\4B\2\2\1K\0\1\0\14on_attach\bcmd\1\0\0\1\2\0\0\bvls\nsetup\bvls\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["sidebar.nvim"] = {
    config = { "\27LJ\2\nK\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\0025\1\2\0009\2\3\0\18\4\1\0B\2\2\1K\0\1\0\nsetup\1\0\1\topen\2\17sidebar-nvim\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  tcomment_vim = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/tcomment_vim",
    url = "https://github.com/tomtom/tcomment_vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÍ\4\0\0\6\0\20\00076\0\0\0009\0\1\0009\0\2\0007\0\3\0005\0\4\0007\0\5\0006\0\3\0'\2\6\0'\3\a\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\t\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\n\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\v\0'\4\f\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\r\0'\4\f\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\14\0'\4\15\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\16\0'\4\17\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\18\0'\4\19\0006\5\5\0B\0\5\1K\0\1\0:<cmd>lua require('telescope.builtin').help_tags()<cr>\15<leader>fh8<cmd>lua require('telescope.builtin').buffers()<cr>\15<leader>fb<<cmd>lua require('telescope.builtin').grep_string()<cr>\15<leader>fs\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\15<leader>fg\n<C-p>\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\15<leader>ff\6n\topts\1\0\2\fnoremap\2\vsilent\2\bmap\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-v"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/opt/vim-v",
    url = "https://github.com/cheap-glitch/vim-v"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: sidebar.nvim
time([[Config for sidebar.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\0025\1\2\0009\2\3\0\18\4\1\0B\2\2\1K\0\1\0\nsetup\1\0\1\topen\2\17sidebar-nvim\frequire\0", "config", "sidebar.nvim")
time([[Config for sidebar.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim∏\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0ÄK\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>z,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0y\1\0\6\0\t\0\0156\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\1\0B\2\2\0029\2\3\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4=\1\b\4B\2\2\1K\0\1\0\14on_attach\bcmd\1\0\0\1\2\0\0\bvls\nsetup\bvls\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: circles.nvim
time([[Config for circles.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcircles\frequire\0", "config", "circles.nvim")
time([[Config for circles.nvim]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nΩ\2\0\0\5\0\19\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\v\0005\3\4\0005\4\3\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\b\0035\4\t\0=\4\n\3=\3\f\0025\3\14\0005\4\r\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0034\4\0\0=\4\15\0034\4\0\0=\4\b\0034\4\0\0=\4\n\3=\3\16\0025\3\17\0=\3\18\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rquickfix\ftabline\14lualine_x\1\0\0\1\2\0\0\fbuffers\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_c\14lualine_b\14lualine_a\1\0\0\1\2\0\0\rfilename\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÍ\4\0\0\6\0\20\00076\0\0\0009\0\1\0009\0\2\0007\0\3\0005\0\4\0007\0\5\0006\0\3\0'\2\6\0'\3\a\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\t\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\n\0'\4\b\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\v\0'\4\f\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\r\0'\4\f\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\14\0'\4\15\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\16\0'\4\17\0006\5\5\0B\0\5\0016\0\3\0'\2\6\0'\3\18\0'\4\19\0006\5\5\0B\0\5\1K\0\1\0:<cmd>lua require('telescope.builtin').help_tags()<cr>\15<leader>fh8<cmd>lua require('telescope.builtin').buffers()<cr>\15<leader>fb<<cmd>lua require('telescope.builtin').grep_string()<cr>\15<leader>fs\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\15<leader>fg\n<C-p>\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\15<leader>ff\6n\topts\1\0\2\fnoremap\2\vsilent\2\bmap\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: neomake
time([[Config for neomake]], true)
try_loadstring("\27LJ\2\nù\1\0\0\a\0\t\0\0146\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0016\1\0\0009\1\a\1'\3\b\0B\1\2\1K\0\1\0 let g:neomake_open_list = 2\bcmd\1\0\2\fnoremap\2\vsilent\2\18:Neomake!<CR>\6M\6n\20nvim_set_keymap\bapi\bvim\0", "config", "neomake")
time([[Config for neomake]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme dracula\bcmd\bvim\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType vsh ++once lua require("packer.load")({'vim-v'}, { ft = "vsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType vlang ++once lua require("packer.load")({'vim-v'}, { ft = "vlang" }, _G.packer_plugins)]]
vim.cmd [[au FileType v ++once lua require("packer.load")({'vim-v'}, { ft = "v" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/wes/.local/share/nvim/site/pack/packer/opt/vim-v/ftdetect/ftdetect.vim]], true)
vim.cmd [[source /Users/wes/.local/share/nvim/site/pack/packer/opt/vim-v/ftdetect/ftdetect.vim]]
time([[Sourcing ftdetect script at: /Users/wes/.local/share/nvim/site/pack/packer/opt/vim-v/ftdetect/ftdetect.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
