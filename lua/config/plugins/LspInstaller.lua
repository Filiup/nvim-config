local lsp_installer = require("nvim-lsp-installer")

local function lua_server_config()
  return {
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

end

lsp_installer.on_server_ready(function(server)
  local opts = {}

  if server.name == "sumneko_lua" then
    opts = lua_server_config()
  end

  server:setup(opts)
end)
