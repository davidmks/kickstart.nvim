-- Diff viewer for git
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[G]it [D]iff view' },
    { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = '[G]it file [H]istory' },
    { '<leader>gH', '<cmd>DiffviewFileHistory<cr>', desc = '[G]it repo [H]istory' },
    { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = '[G]it diff [Q]uit' },
    { '<leader>gm', '<cmd>DiffviewOpen origin/main...HEAD<cr>', desc = '[G]it diff vs [M]ain' },
    { '<leader>gS', '<cmd>DiffviewOpen --staged<cr>', desc = '[G]it diff [S]taged' },
  },
  opts = {
    use_icons = true,
  },
}
