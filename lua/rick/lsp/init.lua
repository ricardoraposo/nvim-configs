local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("rick.lsp.lsp-installer")
require("rick.lsp.handlers").setup()
