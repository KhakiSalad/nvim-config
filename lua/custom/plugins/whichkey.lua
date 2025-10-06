return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VeryLazy', -- Sets the loading event to 'VeryLazy'
  opts = {},
  keys = {
    { '<leader>c', group = '[C]ode' },
    { '<leader>t', group = '[T]oggle Sidebar' },
    { '<leader>f', group = '[F]ind Files' },
    { '<leader>d', group = '[D]ocument' },
    { '<leader>r', group = '[R]ename' },
    { '<leader>w', group = '[W]orkspace' },
  },
}
