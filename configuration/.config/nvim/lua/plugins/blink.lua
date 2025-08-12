return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    build = "cargo build --release",
    dependencies = { "rafamadriz/friendly-snippets" },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "super-tab",
        ["<Tab>"] = {
          require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
          require("lazyvim.util.cmp").map({ "snippet_forward", "ai_accept" }),
          "fallback",
        },
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
