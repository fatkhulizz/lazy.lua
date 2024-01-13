-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.scrolloff = 8

-- vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%} %= %f"

opt.clipboard = "unnamed"

vim.g.everforest_background = "hard"
-- vim.g.everforest_colors_override = {
--   bg0 = { "#000000", "000" },
--   bg2 = { "#1E2326", "235" },
-- }

vim.g.everforest_transparent_background = 2
