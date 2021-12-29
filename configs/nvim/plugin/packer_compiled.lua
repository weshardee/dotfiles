-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
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
  ["circles.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcircles\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/circles.nvim",
    url = "https://github.com/projekt0n/circles.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\2B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\14lualine_b\1\2\0\0\rfilename\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neomake = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/neomake",
    url = "https://github.com/neomake/neomake"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
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
  ["onedark.nvim"] = {
    config = { "\27LJ\2\nu\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\15dark_float\1\bdev\2\17dark_sidebar\1\29hide_inactive_statusline\2\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/ful1e5/onedark.nvim"
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
  tcomment_vim = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/tcomment_vim",
    url = "https://github.com/tomtom/tcomment_vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\1\18\00016\0\0\0009\0\1\0009\0\2\0.\0\0\0005\0\3\0007\0\4\0-\0\0\0'\2\5\0'\3\6\0'\4\a\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\b\0'\4\a\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\t\0'\4\n\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\v\0'\4\n\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\f\0'\4\r\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\14\0'\4\15\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\16\0'\4\17\0006\5\4\0B\0\5\1K\0\1\0\0\0:<cmd>lua require('telescope.builtin').help_tags()<cr>\15<leader>fh8<cmd>lua require('telescope.builtin').buffers()<cr>\15<leader>fb<<cmd>lua require('telescope.builtin').grep_string()<cr>\15<leader>fs\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\15<leader>fg\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\15<leader>ff\6n\topts\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["v-vim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/v-vim",
    url = "https://github.com/ollykel/v-vim"
  },
  ["vim-startuptime"] = {
    config = { "\27LJ\2\nq\0\0\a\0\a\0\n6\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\21:StartupTime<CR>\15<Leader>st\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: circles.nvim
time([[Config for circles.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcircles\frequire\0", "config", "circles.nvim")
time([[Config for circles.nvim]], false)
-- Config for: vim-startuptime
time([[Config for vim-startuptime]], true)
try_loadstring("\27LJ\2\nq\0\0\a\0\a\0\n6\0\0\0009\0\1\0009\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\21:StartupTime<CR>\15<Leader>st\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-startuptime")
time([[Config for vim-startuptime]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\1\18\00016\0\0\0009\0\1\0009\0\2\0.\0\0\0005\0\3\0007\0\4\0-\0\0\0'\2\5\0'\3\6\0'\4\a\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\b\0'\4\a\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\t\0'\4\n\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\v\0'\4\n\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\f\0'\4\r\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\14\0'\4\15\0006\5\4\0B\0\5\1-\0\0\0'\2\5\0'\3\16\0'\4\17\0006\5\4\0B\0\5\1K\0\1\0\0\0:<cmd>lua require('telescope.builtin').help_tags()<cr>\15<leader>fh8<cmd>lua require('telescope.builtin').buffers()<cr>\15<leader>fb<<cmd>lua require('telescope.builtin').grep_string()<cr>\15<leader>fs\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\15<leader>fg\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\15<leader>ff\6n\topts\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\15dark_float\1\bdev\2\17dark_sidebar\1\29hide_inactive_statusline\2\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\2B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\14lualine_b\1\2\0\0\rfilename\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
