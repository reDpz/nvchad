-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  CursorLine = {
    bg = "lightbg"
  },
  CursorLineNr = {
    fg = "yellow",
    bold = true,
    bg = "lightbg"
  },
  LineNr = {
    bg = "black2"
  },
  SignColumn = {
    fg = "black2",
    bg = "black2"
  },
  WhichKeyGroup  = {
    bg = "black2"
  },
  Comment = {
    fg="#665c54",
    -- bg="black",
    italic = true,
  },
  Visual = {
    bg = "white",
    fg = "black"
  },
}


---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
