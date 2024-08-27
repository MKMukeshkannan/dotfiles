return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 0.10,      -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        width = 80,          -- width of the Zen window
        height = 0.8,        -- height of the Zen window
        options = {
          number = false,    -- disable number column
          relativenumber = false, -- disable relative numbers
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,            -- disables the ruler text in the cmd line area
          showcmd = false,          -- disables the command in the last line of the screen
          laststatus = 0,           -- turn off the statusline in zen mode
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
        todo = { enabled = false }, -- if set to "true", todo-comments.nvim highlights will be disabled

        kitty = {
          enabled = true,
          font = "+10", -- font size increment
        },
      },
    })
  end,
}
