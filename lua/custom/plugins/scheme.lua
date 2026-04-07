local lisp_ft = { 'scheme', 'clojure', 'fennel', 'commonlisp', 'racket', 'lisp' }

return {
  { -- Structural editing for s-expressions
    'julienvincent/nvim-paredit',
    ft = lisp_ft,
    opts = {},
  },

  { -- Automatic paren inference from indentation
    -- Requires: cargo (Rust toolchain)
    'eraserhd/parinfer-rust',
    ft = lisp_ft,
    build = 'cargo build --release',
  },

  { -- REPL integration: evaluate code from inside the editor
    'Olical/conjure',
    ft = lisp_ft,
    init = function()
      -- Configure for Chez Scheme
      vim.g['conjure#client#scheme#stdio#command'] = 'chez'
      vim.g['conjure#client#scheme#stdio#prompt_pattern'] = '> $'
    end,
  },
}
