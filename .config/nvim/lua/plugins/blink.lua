return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    -- build = "cargo build --release",
    dependencies = { "rafamadriz/friendly-snippets" },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "super-tab",
      },
      completion = {
        menu = {
          auto_show = false,
        },
        list = {
          selection = {
            auto_insert = false,
          },
        },
      },
    },
  },
}
