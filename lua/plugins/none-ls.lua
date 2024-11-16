return {
  "nvimtools/none-ls.nvim",
  optional = true,
  opts = function(_, opts)
    local nls = require("null-ls")
    table.insert(opts.sources, nls.builtins.formatting.phpcsfixer)
    table.insert(opts.sources, nls.builtins.diagnostics.phpcs)
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.cmake_lint,
    })
  end,
}
