require("neo-tree").setup({
    close_if_last_window = true,
    window = {
	position = "right",
	width = 33,
    },
    filesystem = {
	follow_current_file = { enabled = true },
	use_libuv_file_watcher = true,
	filtered_items = {
	    hide_dotfiles = false,
	    hide_gitignore = false,
	},
    },
})
