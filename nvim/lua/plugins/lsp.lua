return {
    "neovim/nvim-lspconfig",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	
	vim.lsp.config("lua_ls", {
	    capabilities = capabilities,
	    settings = {
		Lua = {
		    workspace = {
			library = {
			    vim.fn.expand("/usr/share/hypr/stubs/hl.meta.lua"),
			},
			checkThirdParty = false,
		    },
		    telemetry = { enable = false },
		},
	    },
	})
	vim.lsp.config("pyright", { capabilities = capabilities })
	
	vim.lsp.enable("lua_ls")
	vim.lsp.enable("pyright")
    end,
}
