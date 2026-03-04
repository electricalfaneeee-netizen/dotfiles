return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Completion sources
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",

      -- Snippets
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Optional: icons
      "onsails/lspkind.nvim",
    },
    config = function()
      require("config.cmp")
    end,
  },
}
