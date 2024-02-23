-- 本文件用于自定义快捷键映射，如与默认映射冲突则会覆盖core/mappings.lua中的默
-- 认映射
local M = {}

M.general = {
  n = {
    -- 分割窗口
    ["<C-w>k"] = { ":abo split <CR>", "split window to top" },
    ["<C-w>h"] = { ":abo vsplit <CR>", "split window to left" },
    ["<C-w>j"] = { ":rightbelow split <CR>", "split window to bottom" },
    ["<C-w>l"] = { ":rightbelow vsplit <CR>", "split window to right" },
    -- 关闭窗口
    ["q"] = { ": <ESC>:close <CR>", "close window", opts = { silent = true } },
    -- 使用回车打开关闭折叠
    ["<CR>"] = { "za", "open fold with enter" },
    -- 将:替换成;
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- 使用Q进行宏录制
    ["Q"] = { "q", "use Q to record macro" },
  },

  v = {
    -- 关闭窗口
    ["q"] = { ": <ESC>:close <CR>", "close window"},
  },

  i = {
    -- jk 快速退出
    ["jk"] = { "<ESC>", "quick escape" },
  }
}

M.lspconfig = {
  plugin = true,
  n = {
    -- 查找基类的继承类或者虚函数具化实现
    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations({ show_line = false })
      end,
      "LSP implementation",
    },
    ["gD"] = {
      function()
        require("telescope.builtin").lsp_type_definitions()
      end,
      "LSP definition type",
    },
    -- 查找定义
    ["gd"] = {
      function()
        require("telescope.builtin").lsp_definitions({ fname_width = 100 })
      end
    },
    -- 查找引用
    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references({ show_line = false })
      end,
      "LSP signature help",
    },
    -- 查找全局符号
    ["gs"] = {
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols({ fname_width = 100 })
      end,
    },
    -- format代码
    ["<leader>fm"] = {
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      "LSP formatting",
    },
  },
  v = {
    -- format代码
    ["<leader>fm"] = {
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      "LSP formatting",
    },
  }
}

return M
