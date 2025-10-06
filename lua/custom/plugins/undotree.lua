return {
  'mbbill/undotree',
  config = function()
    vim.g.undotree_DiffCommand = 'FC'
    vim.keymap.set('n', '<leader>th', vim.cmd.UndotreeToggle, { desc = '[T]oggle [H]istory' })
  end,
}
