---@type ChadrcConfig 
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = 'gruvbox',

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    separator_style = 'block',
    theme = 'vscode_colored'
  },

  transparency = false,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
