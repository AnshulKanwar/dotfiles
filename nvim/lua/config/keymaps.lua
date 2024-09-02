local builtin = require('telescope.builtin')

local is_inside_work_tree = {}
local project_files = function()
	local cwd = vim.fn.getcwd()
  	if is_inside_work_tree[cwd] == nil then
    		vim.fn.system("git rev-parse --is-inside-work-tree")
    		is_inside_work_tree[cwd] = vim.v.shell_error == 0
  	end

	if is_inside_work_tree[cwd] then
    		builtin.git_files()
  	else
    		builtin.find_files()
  	end
end

vim.keymap.set('n', '<leader>ff', project_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
