-- lazy.nvim 的插件配置文件，本文件中的配置会和默认插件配置进行merge

-- 加载部分插件的自定义选项（覆盖默认插件选项）
local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "stevearc/conform.nvim",
    opts = function()
      require "custom.configs.conform"
    end,
  },

  -- override plugin configs
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   lazy = false,
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "gbrlsnchs/telescope-lsp-handlers.nvim",
  --   },
  --   opts = overrides.telescope,
  -- },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  -- {
  --   "lervag/vimtex",
  --   ft = "tex",
  --   config = function()
  --     require("custom.configs.vimtex").setup()
  --   end,
  -- },

  -- {
  --   "numToStr/Comment.nvim",
  --   lazy = false,
  -- },
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
