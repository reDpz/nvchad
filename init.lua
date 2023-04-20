-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- vim.cmd([[Lazy load lualine.nvim]])
vim.cmd([[
" allows for easier navigation
set relativenumber
" wraps around whole words instead of singular letters
set linebreak
]])
