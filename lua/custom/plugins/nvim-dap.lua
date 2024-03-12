return {
  {
    'mfussenegger/nvim-dap',
    config = function()
      vim.keymap.set('n', '<F5>', function()
        require('dap').continue()
      end)
      vim.keymap.set('n', '<F10>', function()
        require('dap').step_over()
      end)
      vim.keymap.set('n', '<F11>', function()
        require('dap').step_into()
      end)
      vim.keymap.set('n', '<F12>', function()
        require('dap').step_out()
      end)
      vim.keymap.set('n', '<Leader>bb', function()
        require('dap').toggle_breakpoint()
      end)
      vim.keymap.set('n', '<Leader>B', function()
        require('dap').set_breakpoint()
      end)
      vim.keymap.set('n', '<Leader>lp', function()
        require('dap').set_breakpoint(nil, nil, vim.fn.input 'Log point message: ')
      end)
      vim.keymap.set('n', '<leader>br', function()
        require('dap').repl.open()
      end)
      vim.keymap.set('n', '<leader>bl', function()
        require('dap').run_last()
      end)
      vim.keymap.set({ 'n', 'v' }, '<leader>bh', function()
        require('dap.ui.widgets').hover()
      end)
      vim.keymap.set({ 'n', 'v' }, '<leader>bp', function()
        require('dap.ui.widgets').preview()
      end)
      vim.keymap.set('n', '<leader>bf', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.frames)
      end)
      vim.keymap.set('n', '<leader>bs', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.scopes)
      end)
    end,
  },
  {
    'mfussenegger/nvim-dap-python',
    config = function()
      local dap_python = require 'dap-python'
      dap_python.setup 'C:/Users/Killich/Documents/.virtualenvs/debugpy/Scripts/python'
      dap_python.resolve_python = function()
        return 'C:/Users/Killich/.virtualenvs/ap_plausi-xM9MUdw2'
      end
    end,
  },
}
