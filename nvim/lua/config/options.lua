vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true 	-- no real tabs please!
vim.opt.shiftround = true 	-- when at 3 spaces, and I hit > ... go to 4, not 5
vim.opt.shiftwidth = 4 		-- auto indent amount when using indents ex >> and <<
vim.opt.softtabstop = 4 	-- when hitting tab or backspace, how wide should a tab be
vim.opt.tabstop = 4 		-- tabs width
vim.opt.autoindent = true 	-- keep indenting after newline
vim.opt.smarttab = true 	-- insert tabs on the start according to shiftwidth, not tabstop
