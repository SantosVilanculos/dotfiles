return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- *
        "cspell",
        "emmet-language-server",
        -- bash
        "bash-language-server",
        "shfmt",
        -- blade
        "blade-formatter",
        -- lua
        "lua-language-server",
        "stylua",
        -- php
        "intelephense",
        "phpstan",
        "pint",
        -- python
        "python-lsp-server",
        "pyright",
        "ruff",
        "isort",
        "autoflake",
        "black",
        -- yaml
        "yaml-language-server",
        -- css|html|javacript|json|jsonc|typescript
        "prettier",
        "eslint_d",
        "html-lsp",
        "htmlhint",
        "css-lsp",
        "json-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
      },
      automatic_installation = true,
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = true,
    },
  },
}
