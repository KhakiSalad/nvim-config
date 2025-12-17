return {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.everforest_background = 'hard'
    vim.cmd.colorscheme 'everforest'
    require('everforest').setup { transparent_background_level = 2 }
    if not vim.g.neovide then
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
  end,
}
