require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    window = {
	position = "float",
	width = 33,
    },
    filesystem = {
	bind_to_cwd = true,
	follow_current_file = { enabled = true },
	use_libuv_file_watcher = true,
	filtered_items = {
	    hide_dotfiles = false,
	    hide_gitignore = false,
	},
    },
})
