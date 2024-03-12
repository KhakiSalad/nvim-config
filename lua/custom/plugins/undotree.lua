return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>ht', vim.cmd.UndotreeToggle)
  end,
}
