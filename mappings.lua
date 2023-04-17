---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["Q"] = { ":q!\n", "exit without saving", opts = {nowait = true}},
    ["q"] = { "ZZ", "write quit", opts = { nowait = true } },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
