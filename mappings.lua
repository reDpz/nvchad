---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["q"] = { "ZZ", "write quit", opts = { nowait = true } },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
