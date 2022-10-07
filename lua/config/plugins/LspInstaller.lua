local lsp_installer = require("nvim-lsp-installer")
local lsp_config = require('lspconfig')

lsp_installer.setup {
  automatic_installation = true,
  ensure_installed = {
    "clangd",
    "pyright",
    "sumneko_lua",
    "marksman"
  },
}

lsp_config.clangd.setup {
  settings = {}
}

lsp_config.pyright.setup {
  settings = {}
}

lsp_config.marksman.setup {
  settings = {}
}

lsp_config.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim', 'use' },
        disable = { 'trailing-space' }
      },
      format = {
        enable = true
      }
      --workspace = {
      -- Make the server aware of Neovim runtime files
      --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
      --}
    }
  }

}
