--[[
# telescope-commander 

Stores a registry of named actions and optionally a related shortcut.

Registered actions will be available to a telescope provider.

The goal is to provide for Vim something similar in nature to VS Code's command palette.

## Install

TODO

## Usage

The API is intended to match nvim's keymapping function as much as possible:

```
cmd.add { <name>, <mode>, <keys>, <action> }
```

To omit the shortcut, you must explicitly pass `nil`

```
cmd.add { <name>, <mode>, nil, <action> }
```

## To implement

- support for filetype specific commands

]]--

local module = {}

-- this is our local table of actions
local cmd_registry = {}

-- the api for adding new actions
module.add = function(args)
	local name = args[1]
	local mode = args[2]
	local keys = args[3]
	local cmd = args[4]
	local opts = args[5] or {silent=true}
	local map = args[6] or vim.api.nvim_set_keymap

	-- register the action to our searchable list for use in a telescope picker
	table.insert(cmd_registry, {name = name, cmd = cmd, keys = keys, mode = mode})

	-- register the action's keyboard shortcut if there is one
	if (keys) then
		if opts == nil then
			local use_default = cmd[0] == ':' or string.sub(cmd, 1, 5) == '<cmd>'
			opts = use_default and {silent=true, noremap=true} or {}
		end
		map(mode, keys, cmd, opts)
	end	
end

-- TODO filetype specific actions
-- cmd FileType rust nnoremap M :make run<CR>')

--
-- telescope picker config
--

local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local entry_display = require 'telescope.pickers.entry_display'
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local conf = require('telescope.config').values

module.commander = function(opts)
	opts = opts or require('telescope.themes').get_dropdown{}

	local displayer = entry_display.create {
		separator = '',
		items = {
			{ width = 55 },
			{ width = 20, right_justify=true }
		}
	}
	local make_display = function(entry)
		local keys = entry.value.keys
		local name = entry.value.name
		return displayer {
			{ name },
			{ keys, "TelescopeResultsIdentifier"  },
		}
	end

	pickers.new(opts, {
		prompt_title = 'commands',
		finder = finders.new_table {
			results = cmd_registry,
			entry_maker = function(entry)
				return {
					value = entry,
					ordinal = entry.name,
					display = make_display,
				}
			end,
		},
		sorter = conf.generic_sorter(opts),
		attach_mappings = function(prompt_bufnr, map)
			actions.select_default:replace(function()
				local selection = action_state.get_selected_entry()
        if not selection then
          print "[telescope] Nothing currently selected"
          return
        end
				
				actions.close(prompt_bufnr)
				vim.cmd [[stopinsert]]
			
				local cmd = selection.value.cmd
				local mode = selection.value.mode or ''
				local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
				vim.api.nvim_feedkeys(keys, mode, true)
			end) 
			return true
		end,
		-- TODO sort by recently used?
		-- TODO auto-select most recent
	}):find()
end

vim.cmd[[command! Commander :lua require('cmd').commander()]] 

return module 
