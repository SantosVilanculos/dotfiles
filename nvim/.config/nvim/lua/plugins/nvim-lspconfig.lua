return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                autopep8 = { enabled = false },
                pycodestyle = { enabled = false },
              },
            },
          },
        },
        laravel_lsp = {
          mason = false,
          cmd = { "laravel-lsp" },
          filetypes = { "php", "blade" },
          root_markers = { "artisan", "composer.json", ".git" },
        },
      },
    },
  },
}
