local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<Leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Telescope grep string' })

-- Map <Leader>, to show recently opened files
vim.keymap.set('n', '<Leader>,', function()
  require('telescope.builtin').oldfiles({
    prompt_title = 'Recent Files',
    only_cwd = true,
  })
end, { desc = 'Telescope recent files' })
