-- Rose Pine colorscheme
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  enabled = vim.g.colorscheme == 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      styles = {
        italic = false,
      },
      highlight_groups = {
        ['@string.documentation'] = { link = 'Comment' },
        ['@string.documentation.python'] = { link = 'Comment' },
      },
    }
    vim.cmd.colorscheme 'rose-pine'
  end,
}
