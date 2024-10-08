return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.pylint,
      },
    }

    vim.keymap.set('n', '<Leader>gf', vim.lsp.buf.format, {
      desc = '[f]ormat buffer using lsp',
    })
  end,
}
