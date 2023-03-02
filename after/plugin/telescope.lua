local builtin = require('telescope.builtin')
-- pf stands for: project file
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
