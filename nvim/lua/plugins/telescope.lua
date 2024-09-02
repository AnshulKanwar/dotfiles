local config = function()
	local builtin = require("telescope.builtin")
	local telescope = require("telescope")

	telescope.setup({
		defaults = {
			file_ignore_patterns = { "^node_modules/" },
			path_display = { "truncate" },
			pickers = {
				find_files = {
		  			hidden = true,
				},
	      		},
		},
	})

	--telescope.load_extension("fzf")
	
end

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
	    'nvim-lua/plenary.nvim',
	    'nvim-tree/nvim-web-devicons'
    },
    config = config
}
