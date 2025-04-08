return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "onedark",
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_z = {
          {
            function()
              return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            end,
            color = { fg = "#000000", bg = "#fdba74" },
            cond = function()
              return vim.fn.getcwd() ~= ""
            end,
          },
        },
      },
    },
  },
}
