local configs = require 'nvim-treesitter.configs'

configs.setup {
  ensure_installed = { "c", "lua" }, -- Parsers na stiahnutie pre jedn. jazyky
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}

-- Povolenie treeSitter folding

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--
-- Legenda pre treesitter folding
-- <z + o> => open ( zorazenie obsahu )
-- <z + c> => fold ( skrytie obsahu )
-- <z + R> => otvorenie vsetkych foldov
