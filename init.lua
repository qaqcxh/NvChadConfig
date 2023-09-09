-- 本文件用于添加自定义命令，nvchad执行完core/init.lua后
-- 即会执行该文件

local opt = vim.opt

opt.ttimeoutlen = 10
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
