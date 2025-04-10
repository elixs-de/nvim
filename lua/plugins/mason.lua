return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "codelldb",
      "cmakelang",
      "cmakelint",
      "phpcs",
      "php-cs-fixer",
      "js-debug-adapter",
      "goimports",
      "gofumpt",
      "gomodifytags",
      "impl",
      "delve",
    },
  },
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "codelldb" })
      if diagnostics == "bacon-ls" then
        vim.list_extend(opts.ensure_installed, { "bacon" })
      end
    end,
  },
}

