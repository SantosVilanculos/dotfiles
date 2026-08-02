return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    -- onedark
    -- onelight
    -- onedark_vivid
    -- onedark_dark
    -- vaporwave
  },
  {
    "projekt0n/github-nvim-theme",
    -- priority = 1000,
    -- lazy = false,
    -- github_dark_dimmed
    -- github_dark_default
    -- github_light_default
    -- github_dark_high_contrast
    -- github_light_high_contrast
    -- github_dark_colorblind
    -- github_light_colorblind
    -- github_dark_tritanopia
    -- github_light_tritanopia
  },
  {
    "datsfilipe/min-theme.nvim",
    -- priority = 1000,
    -- lazy = false,
    opts = {
      -- (note: if your configuration sets vim.o.background the following option will do nothing!)
      theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
      transparent = false, -- Boolean: Sets the background to transparent
      italics = {
        comments = true, -- Boolean: Italicizes comments
        -- keywords = true, -- Boolean: Italicizes keywords
        -- functions = true, -- Boolean: Italicizes functions
        -- strings = true, -- Boolean: Italicizes strings
        -- variables = true, -- Boolean: Italicizes variables
      },
      overrides = {},
    },
    -- min-theme
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- priority = 1000,
    -- lazy = false,
    opts = {
      transparent = false, -- Boolean: Sets the background to transparent
      variant = "auto", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
    },
    -- rose-pine
    -- rose-pine-main
    -- rose-pine-moon
    -- rose-pine-dawn
  },
  {
    "datsfilipe/vesper.nvim",
    -- priority = 1000,
    -- lazy = false,
    opts = {
      transparent = false, -- Boolean: Sets the background to transparent
      italics = {
        comments = true, -- Boolean: Italicizes comments
        -- keywords = true, -- Boolean: Italicizes keywords
        -- functions = true, -- Boolean: Italicizes functions
        -- strings = true, -- Boolean: Italicizes strings
        -- variables = true, -- Boolean: Italicizes variables
      },
      overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
      palette_overrides = {},
    },
    -- vesper
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
