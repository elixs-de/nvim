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
    },
  },
}
