local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    cpp = { "clang_format" },
    -- lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    -- python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    -- javascript = { { "prettierd", "prettier" } },
  },
})
