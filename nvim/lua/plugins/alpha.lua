return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
	local dashboard = require("alpha.themes.dashboard")
	dashboard.section.header.val = vim.split([[
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
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
	require("alpha.themes.startify").file_icons.provider = "devicons"
    end
}
