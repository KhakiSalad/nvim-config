return {
  {
    'mfussenegger/nvim-dap',
    lazy = true,
    config = function()
      vim.keymap.set('n', '<leader>cc', function()
        require('dap').continue()
      end, { desc = 'DAP: Start/Continue debugging' })

      vim.keymap.set('n', '<leader>cs', function()
        require('dap').step_over()
      end, { desc = 'DAP: Step over' })

      vim.keymap.set('n', '<leader>ci', function()
        require('dap').step_into()
      end, { desc = 'DAP: Step into' })

      vim.keymap.set('n', '<leader>co', function()
        require('dap').step_out()
      end, { desc = 'DAP: Step out' })

      vim.keymap.set('n', '<Leader>bb', function()
        require('dap').toggle_breakpoint()
      end, { desc = 'DAP: Toggle breakpoint' })

      vim.keymap.set('n', '<Leader>B', function()
        require('dap').set_breakpoint()
      end, { desc = 'DAP: Set conditional breakpoint' })

      vim.keymap.set('n', '<Leader>lp', function()
        require('dap').set_breakpoint(nil, nil, vim.fn.input 'Log point message: ')
      end, { desc = 'DAP: Set logpoint' })

      vim.keymap.set('n', '<leader>br', function()
        require('dap').repl.open()
      end, { desc = 'DAP: Open REPL' })

      vim.keymap.set('n', '<leader>bl', function()
        require('dap').run_last()
      end, { desc = 'DAP: Run last debug session' })

      vim.keymap.set({ 'n', 'v' }, '<leader>bh', function()
        require('dap.ui.widgets').hover()
      end, { desc = 'DAP: Hover variable info' })

      vim.keymap.set({ 'n', 'v' }, '<leader>bp', function()
        require('dap.ui.widgets').preview()
      end, { desc = 'DAP: Preview variable value' })

      vim.keymap.set('n', '<leader>bf', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.frames)
      end, { desc = 'DAP: Show frames in float' })

      vim.keymap.set('n', '<leader>bs', function()
        local widgets = require 'dap.ui.widgets'
        widgets.centered_float(widgets.scopes)
      end, { desc = 'DAP: Show scopes in float' })
    end,
  },
  {
    'mfussenegger/nvim-dap-python',
    lazy = true,
    config = function()
      local dap_python = require 'dap-python'
      dap_python.setup 'C:/Users/Killich/Documents/.virtualenvs/debugpy/Scripts/python'
      dap_python.resolve_python = function()
        return 'C:/Users/Killich/.virtualenvs/ap_plausi-xM9MUdw2'
      end
    end,
  },
}
