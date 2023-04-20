---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["gk"]= { "k", "Go up one entire hard line.", opts = {nowait=true}},
    ["gj"]= { "j", "Go down one entire hard line.", opts = {nowait=true}},
    ["Q"] = { ":q!\n", "exit without saving", opts = {nowait = true}},
    ["q"] = { "ZZ", "write quit", opts = { nowait = true } },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
