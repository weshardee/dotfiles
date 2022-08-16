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
  ["asyncrun.vim"] = {
    config = { "\27LJ\2\nM\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\6\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\18asyncrun_bell\18asyncrun_open\6g\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["auto-session"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufdelete.nvim"] = {
    config = { "\27LJ\2\nt\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0005\3\3\0B\1\2\1K\0\1\0\1\5\0\0 Buffer: close & keep window\6n\14<leader>w\21<cmd>Bdelete<cr>\badd\bcmd\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
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
    config = { "\27LJ\2\n÷\3\0\0\5\0\27\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0005\4\21\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\23\0034\4\0\0=\4\17\0034\4\0\0=\4\19\3=\3\24\0025\3\25\0=\3\26\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rquickfix\ftabline\14lualine_x\1\0\0\1\2\0\0\fbuffers\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_c\14lualine_b\14lualine_a\1\0\0\1\2\0\0\rfilename\foptions\1\0\0\23disabled_filetypes\1\2\0\0\16SidebarNvim\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\0\1\0\2\tleft\5\nright\bÓÇ≥\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim≠\14\1\2\t\0\24\0r6\2\0\0'\4\1\0B\2\2\0029\2\2\0023\3\3\0003\4\4\0\18\5\4\0'\a\5\0'\b\6\0B\5\3\1\18\5\2\0005\a\a\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\b\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\t\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\n\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\v\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\f\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\r\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\14\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\15\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\16\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\17\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\18\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\19\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\20\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\21\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\22\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\23\0004\b\0\0>\b\5\a>\3\6\aB\5\2\0012\0\0ÄK\0\1\0\1\5\0\0\23Lsp: format buffer\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\5\0\0'Lsp Diagnostics: set location list\6n\r<space>z-<cmd>lua vim.diagnostic.setloclist()<CR>\1\5\0\0\31Lsp Diagnostics: goto next\6n\a]d,<cmd>lua vim.diagnostic.goto_next()<CR>\1\5\0\0\31Lsp Diagnostics: goto prev\6n\a[d,<cmd>lua vim.diagnostic.goto_prev()<CR>\1\5\0\0\26Lsp Diagnostics: open\6n\r<space>e-<cmd>lua vim.diagnostic.open_float()<CR>\1\5\0\0\25Lsp: show references\6n\agr*<cmd>lua vim.lsp.buf.references()<CR>\1\5\0\0\21Lsp: code action\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\5\0\0\16Lsp: rename\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\5\0\0\30Lsp: show type definition\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\5\0\0 Lsp: list workspace folders\6n\14<space>wlJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\1\5\0\0!Lsp: remove workspace folder\6n\14<space>wr7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\1\5\0\0\30Lsp: add workspace folder\6n\14<space>wa4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\1\5\0\0\24Lsp: signature help\6n\n<C-k>.<cmd>lua vim.lsp.buf.signature_help()<CR>\1\5\0\0\29Lsp: goto implementation\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\5\0\0\20Lsp: show hover\6n\6K%<cmd>lua vim.lsp.buf.hover()<CR>\1\5\0\0\25Lsp: goto definition\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\5\0\0\26Lsp: goto declaration\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\badd\bcmd\frequire√\1\1\0\6\0\f\0\0256\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\1\0B\2\2\0029\2\3\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4=\1\b\4B\2\2\0016\2\0\0'\4\1\0B\2\2\0029\2\t\0029\2\4\0025\4\v\0005\5\n\0=\5\a\4=\1\b\4B\2\2\1K\0\1\0\1\0\0\1\2\0\0\27/Users/wes/dev/ols/ols\bols\14on_attach\bcmd\1\0\0\1\2\0\0\bvls\nsetup\bvls\0\14lspconfig\frequire\0" },
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
  ["onedark.vim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
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
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n»\a\0\0\4\0\f\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0005\3\3\0B\1\2\1\18\1\0\0005\3\4\0B\1\2\1\18\1\0\0005\3\5\0B\1\2\1\18\1\0\0005\3\6\0B\1\2\1\18\1\0\0005\3\a\0B\1\2\1\18\1\0\0005\3\b\0B\1\2\1\18\1\0\0005\3\t\0B\1\2\1\18\1\0\0005\3\n\0B\1\2\1\18\1\0\0005\3\v\0B\1\2\1K\0\1\0\1\5\0\0\31Telescope: find definition\6n\15<leader>fd@<cmd>lua require('telescope.builtin').lsp_definitions()<cr>\1\5\0\0\25Telescope: find help\6n\15<leader>fh:<cmd>lua require('telescope.builtin').help_tags()<cr>\1\5\0\0\27Telescope: find buffer\6n\15<leader>fb8<cmd>lua require('telescope.builtin').buffers()<cr>\1\5\0\0\27Telescope: find string\6n\15<leader>fs<<cmd>lua require('telescope.builtin').grep_string()<cr>\1\5\0\0\20Telescope: grep\6n\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\1\5\0\0\20Telescope: grep\6n\15<leader>fg:<cmd>lua require('telescope.builtin').live_grep()<cr>\1\5\0\0\26Telescope: find files\6n\n<C-p>;<cmd>lua require('telescope.builtin').find_files()<cr>\1\5\0\0\26Telescope: find files\6n\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\1\5\0\0\26Telescope: find files\6n\15<leader>ff;<cmd>lua require('telescope.builtin').find_files()<cr>\badd\bcmd\frequire\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-vinegar"] = {
    config = { "\27LJ\2\nR\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0003let g:netrw_list_hide = '\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/wes/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim≠\14\1\2\t\0\24\0r6\2\0\0'\4\1\0B\2\2\0029\2\2\0023\3\3\0003\4\4\0\18\5\4\0'\a\5\0'\b\6\0B\5\3\1\18\5\2\0005\a\a\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\b\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\t\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\n\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\v\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\f\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\r\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\14\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\15\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\16\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\17\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\18\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\19\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\20\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\21\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\22\0004\b\0\0>\b\5\a>\3\6\aB\5\2\1\18\5\2\0005\a\23\0004\b\0\0>\b\5\a>\3\6\aB\5\2\0012\0\0ÄK\0\1\0\1\5\0\0\23Lsp: format buffer\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\5\0\0'Lsp Diagnostics: set location list\6n\r<space>z-<cmd>lua vim.diagnostic.setloclist()<CR>\1\5\0\0\31Lsp Diagnostics: goto next\6n\a]d,<cmd>lua vim.diagnostic.goto_next()<CR>\1\5\0\0\31Lsp Diagnostics: goto prev\6n\a[d,<cmd>lua vim.diagnostic.goto_prev()<CR>\1\5\0\0\26Lsp Diagnostics: open\6n\r<space>e-<cmd>lua vim.diagnostic.open_float()<CR>\1\5\0\0\25Lsp: show references\6n\agr*<cmd>lua vim.lsp.buf.references()<CR>\1\5\0\0\21Lsp: code action\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\5\0\0\16Lsp: rename\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\5\0\0\30Lsp: show type definition\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\5\0\0 Lsp: list workspace folders\6n\14<space>wlJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\1\5\0\0!Lsp: remove workspace folder\6n\14<space>wr7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\1\5\0\0\30Lsp: add workspace folder\6n\14<space>wa4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\1\5\0\0\24Lsp: signature help\6n\n<C-k>.<cmd>lua vim.lsp.buf.signature_help()<CR>\1\5\0\0\29Lsp: goto implementation\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\5\0\0\20Lsp: show hover\6n\6K%<cmd>lua vim.lsp.buf.hover()<CR>\1\5\0\0\25Lsp: goto definition\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\5\0\0\26Lsp: goto declaration\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\27v:lua.vim.lsp.omnifunc\romnifunc\0\0\badd\bcmd\frequire√\1\1\0\6\0\f\0\0256\0\0\0'\2\1\0B\0\2\0023\1\2\0006\2\0\0'\4\1\0B\2\2\0029\2\3\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4=\1\b\4B\2\2\0016\2\0\0'\4\1\0B\2\2\0029\2\t\0029\2\4\0025\4\v\0005\5\n\0=\5\a\4=\1\b\4B\2\2\1K\0\1\0\1\0\0\1\2\0\0\27/Users/wes/dev/ols/ols\bols\14on_attach\bcmd\1\0\0\1\2\0\0\bvls\nsetup\bvls\0\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: bufdelete.nvim
time([[Config for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0005\3\3\0B\1\2\1K\0\1\0\1\5\0\0 Buffer: close & keep window\6n\14<leader>w\21<cmd>Bdelete<cr>\badd\bcmd\frequire\0", "config", "bufdelete.nvim")
time([[Config for bufdelete.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: onedark.vim
time([[Config for onedark.vim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme onedark\bcmd\bvim\0", "config", "onedark.vim")
time([[Config for onedark.vim]], false)
-- Config for: asyncrun.vim
time([[Config for asyncrun.vim]], true)
try_loadstring("\27LJ\2\nM\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\6\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\18asyncrun_bell\18asyncrun_open\6g\bvim\0", "config", "asyncrun.vim")
time([[Config for asyncrun.vim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n÷\3\0\0\5\0\27\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\17\0035\4\18\0=\4\19\3=\3\20\0025\3\22\0005\4\21\0=\4\14\0034\4\0\0=\4\15\0034\4\0\0=\4\16\0034\4\0\0=\4\23\0034\4\0\0=\4\17\0034\4\0\0=\4\19\3=\3\24\0025\3\25\0=\3\26\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rquickfix\ftabline\14lualine_x\1\0\0\1\2\0\0\fbuffers\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\14lualine_c\14lualine_b\14lualine_a\1\0\0\1\2\0\0\rfilename\foptions\1\0\0\23disabled_filetypes\1\2\0\0\16SidebarNvim\23section_separators\1\0\2\tleft\5\nright\5\25component_separators\1\0\0\1\0\2\tleft\5\nright\bÓÇ≥\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vim-vinegar
time([[Config for vim-vinegar]], true)
try_loadstring("\27LJ\2\nR\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0003let g:netrw_list_hide = '\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'\bcmd\bvim\0", "config", "vim-vinegar")
time([[Config for vim-vinegar]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n»\a\0\0\4\0\f\0 6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0005\3\3\0B\1\2\1\18\1\0\0005\3\4\0B\1\2\1\18\1\0\0005\3\5\0B\1\2\1\18\1\0\0005\3\6\0B\1\2\1\18\1\0\0005\3\a\0B\1\2\1\18\1\0\0005\3\b\0B\1\2\1\18\1\0\0005\3\t\0B\1\2\1\18\1\0\0005\3\n\0B\1\2\1\18\1\0\0005\3\v\0B\1\2\1K\0\1\0\1\5\0\0\31Telescope: find definition\6n\15<leader>fd@<cmd>lua require('telescope.builtin').lsp_definitions()<cr>\1\5\0\0\25Telescope: find help\6n\15<leader>fh:<cmd>lua require('telescope.builtin').help_tags()<cr>\1\5\0\0\27Telescope: find buffer\6n\15<leader>fb8<cmd>lua require('telescope.builtin').buffers()<cr>\1\5\0\0\27Telescope: find string\6n\15<leader>fs<<cmd>lua require('telescope.builtin').grep_string()<cr>\1\5\0\0\20Telescope: grep\6n\6':<cmd>lua require('telescope.builtin').live_grep()<cr>\1\5\0\0\20Telescope: grep\6n\15<leader>fg:<cmd>lua require('telescope.builtin').live_grep()<cr>\1\5\0\0\26Telescope: find files\6n\n<C-p>;<cmd>lua require('telescope.builtin').find_files()<cr>\1\5\0\0\26Telescope: find files\6n\6;;<cmd>lua require('telescope.builtin').find_files()<cr>\1\5\0\0\26Telescope: find files\6n\15<leader>ff;<cmd>lua require('telescope.builtin').find_files()<cr>\badd\bcmd\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
