-- 用自定义的插件选项覆盖默认的插件选项

local M = {}

M.treesitter = {
  ensure_installed = {
    "c",
    "cpp",
    "java",
    "python",
    "cuda",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    -- "stylua",

    -- web dev stuff
    -- "css-lsp",
    -- "html-lsp",
    -- "typescript-language-server",
    -- "deno",
    -- "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- cmake stuff
    "cmake-language-server",
    "bash-language-server",

    -- python
    "pyright",

    -- latex
    -- "ltex-ls",
    -- "latexindent",
    -- "texlab",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  -- extensions_list = { "themes", "terms", "lsp_handlers" },
}

return M
