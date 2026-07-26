return {
    "neovim/nvim-lspconfig",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	
	vim.lsp.config("lua_ls", { capabilities = capabilities })
	vim.lsp.config("pyright", { capabilities = capabilities })
	
	vim.lsp.enable("lua_ls")
	vim.lsp.enable("pyright")
    end,
}
