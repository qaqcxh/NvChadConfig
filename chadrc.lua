-- 用于覆盖default_config.lua文件，设置一些变量用于控制nvim选项值
---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "github_dark",
  theme_toggle = { "github_dark", "github_dark" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  telescope = { style = "bordered" } -- borderless / bordered
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
