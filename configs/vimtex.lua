local M = {}

M.setup = function ()
  -- nvchad 配置vimscript插件可以使用如下两种形式：
  -- 1. 使用lua的方式设置vimscript的全局变量
  -- 2. 使用vim.cmd直接使用vimscript

  -- 第一种配置方式：
  -- vim.g.vimtex_mappings_prefix = '<leader>l'
  -- vim.g.tex_flavor = 'latex'
  -- vim.g.vimtex_synctex = 1 vim.g.tex_conceal = 'abdmg'
  -- vim.g.vimtex_compile_latexmk = {
  --   executable = "latexmk",
  --   OPTIONS = {
  --     "-xelatex",
  --     "-fine-line-error",
  --     "-synctex=1",
  --     "-interactions=nonstopmode",
  --   },
  -- }

  -- 第二种配置方式
  vim.cmd([[
  let g:vimtex_compiler_latexmk_engines = {
      \ '_' : '-xelatex',
      \}

  ]])

end

return M
