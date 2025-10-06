return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup {}
    local api = require 'nvim-tree.api'
    vim.keymap.set('n', '<leader>tn', function()
      api.tree.toggle()
    end, { desc = '[N] Toggle File Tree' })
    vim.keymap.set('n', '<C-p>', function()
      api.tree.change_root_to_node()
    end, { desc = 'CD' })
  end,
}
