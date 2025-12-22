-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false, -- Required: doesn't support lazy-loading
  build = ':TSUpdate',
  config = function()
    -- Fold settings: open files with all folds open
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99

    local parsers = { 'bash', 'c', 'diff', 'go', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'python', 'query', 'typescript', 'vim', 'vimdoc' }
    local filetypes = { 'bash', 'sh', 'c', 'diff', 'go', 'html', 'lua', 'markdown', 'python', 'query', 'typescript', 'vim', 'help' }

    -- Install parsers
    require('nvim-treesitter').install(parsers)

    -- Enable treesitter features for installed parsers
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function()
        -- Syntax highlighting
        vim.treesitter.start()

        -- Folding
        vim.wo[0][0].foldmethod = 'expr'
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'

        -- Indentation (experimental)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
  -- There are additional nvim-treesitter modules that you can use to interact
  -- with nvim-treesitter. You should go explore a few and see what interests you:
  --
  --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
  --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
