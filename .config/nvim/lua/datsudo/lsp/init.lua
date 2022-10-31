local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("datsudo.lsp.lsp-installer")
require("datsudo.lsp.handlers").setup()
