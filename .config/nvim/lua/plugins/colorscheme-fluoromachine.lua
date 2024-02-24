return {
  {
    "maxmx03/fluoromachine.nvim",
    priority = 999,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = false, -- enable or disable glow effect, default: false
        brightness = 0.05, -- value should be a float value from 0 - 1, default: 0.05
        theme = "fluoromachine", -- flouromachine, retrowave, delta, default: flouromachine
        transparent = false, -- change background to to transparent, set 'full' to make everything transparent
      })

      vim.cmd.colorscheme("fluoromachine")
    end,
  },
}
