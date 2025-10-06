return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'neanias/everforest-nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Load the colorscheme here
    --vim.cmd.colorscheme 'everforest'
    require('everforest').setup { transparent_background_level = 2 }
    -- You can configure highlights by doing something like
    --vim.cmd.hi 'Comment gui=none'
    -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(1, 'NormalFloat', { bg = 'none' })
    --vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}
