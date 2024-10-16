local lspconfig = require "lspconfig"
local map = vim.keymap.set

-- EXAMPLE
local M = {}
M.on_attach = function(_, bufnr)
    local function opts(desc)
      return { buffer = bufnr, desc = "LSP " .. desc }
    end
    map("n", "fs", vim.lsp.buf.signature_help, opts "Show signature help")
    map("n", "rf", vim.lsp.buf.references, opts "Show references")
end

M.on_init = function(client, _)
    if client.supports_method "textDocument/semanticTokens" then
      client.server_capabilities.semanticTokensProvider = nil
    end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}



local servers = { "html", "cssls", "pyright", "ts_ls" }
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = M.on_attach,
    on_init = M.on_init,
    capabilities = M.capabilities,
  }
end

lspconfig.lua_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,
    settings = {
        Lua = {
            diagnostics = {
                global = { "vim" }
            }
        }
    }
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
