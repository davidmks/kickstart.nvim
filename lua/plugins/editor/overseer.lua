-- Task runner
return {
  'stevearc/overseer.nvim',
  cmd = { 'OverseerRun', 'OverseerToggle' },
  keys = {
    { '<leader>or', '<cmd>OverseerRun<cr>', desc = '[O]verseer [R]un task' },
    { '<leader>ot', '<cmd>OverseerToggle<cr>', desc = '[O]verseer [T]oggle list' },
    { '<leader>oa', '<cmd>OverseerTaskAction<cr>', desc = '[O]verseer task [A]ction' },
    { '<leader>oq', '<cmd>OverseerQuickAction<cr>', desc = '[O]verseer [Q]uick action' },
  },
  opts = {},
}
