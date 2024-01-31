return {
  {
    "maxmx03/dracula.nvim",
    lazy = false, -- make sure this loads during startup if main theme
    priority = 999, -- make sure we load this before all the other start plugins
    config = function()
      local fm = require("dracula")

      fm.setup({
        transparent = true, -- change background to to transparent, set 'full' to make everything transparent
      })

      vim.cmd.colorscheme("dracula")
    end,
  },
}
