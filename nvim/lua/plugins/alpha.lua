return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	local theta = require("alpha.themes.theta")
	theta.header.val = vim.split([[
	╔═══════════════════════════════════════════════════════════════════╗
	║                                                                   ║
	║                                             ███                   ║
	║                                            ░░░                    ║
	║   ████████    ██████   ██████  █████ █████ ████  █████████████    ║
	║  ░░███░░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███   ║
	║   ░███ ░███ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███   ║
	║   ░███ ░███ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███   ║
	║   ████ █████░░██████ ░░██████   ░░█████    █████ █████░███ █████  ║
	║  ░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░   ║
	║                                                                   ║
	╚═══════════════════════════════════════════════════════════════════╝
	]], '\n', {trimempty = true})
	require'alpha'.setup(require'alpha.themes.theta'.config)
	require("alpha.themes.startify").file_icons.provider = "devicons"
    end
}
