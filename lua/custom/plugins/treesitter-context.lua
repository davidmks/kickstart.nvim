-- Show current code context at top of screen
return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    enable = true,
    max_lines = 3,
  },
}
