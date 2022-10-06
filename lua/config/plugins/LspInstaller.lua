local lsp_installer = require("nvim-lsp-installer")
local lsp_config = require('lspconfig')

local function lua_server_config()
  return {
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

end

lsp_installer.setup {
  automatic_installation = true,
  ensure_installed = {
    "clangd",
    "pyright",
    "sumneko_lua",
    "eslint"
  },
}

lsp_config.clangd.setup {
  settings = {}
}

lsp_config.pyright.setup {
  settings = {}
}

lsp_config.sumneko_lua.setup {
  settings = lua_server_config()
}

lsp_config.eslint.setup {
  settings = {}
}



-- lsp_installer.on_server_ready(function(server)
--   local opts = {}
--
--   if server.name == "sumneko_lua" then
--     opts = lua_server_config()
--   end
--
--   server:setup(opts)
-- end)
