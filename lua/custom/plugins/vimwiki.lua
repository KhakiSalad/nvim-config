-- lua/plugins/vimwiki.lua
return {
  'vimwiki/vimwiki',
  -- Vimwiki is Vimscript; load on filetypes and common wiki entrypoints
  ft = { 'vimwiki', 'markdown' },
  cmd = { 'VimwikiIndex', 'VimwikiDiaryIndex', 'VimwikiMakeDiaryNote' },
  init = function()
    -- IMPORTANT: set globals in init (before plugin loads)
    vim.g.vimwiki_global_ext = 0 -- don't treat every markdown as vimwiki

    vim.g.vimwiki_list = {
      {
        path = vim.fn.expand '~/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
      },
    }

    -- Optional: keep Vimwiki from overwriting your markdown mappings
    -- vim.g.vimwiki_key_mappings = { all_maps = 0, global = 0, headers = 1 }
  end,
  config = function()
    vim.keymap.set('n', 'ü', '<Plug>VimwikiRemoveHeaderLevel', { desc = 'Remove header level' })
  end,
  keys = {
    { '<leader>ww', '<cmd>VimwikiIndex<cr>', desc = 'Vimwiki: index' },
    { '<leader>wd', '<cmd>VimwikiDiaryIndex<cr>', desc = 'Vimwiki: diary index' },
    { '<leader>wn', '<cmd>VimwikiMakeDiaryNote<cr>', desc = 'Vimwiki: new diary note' },
  },
}
