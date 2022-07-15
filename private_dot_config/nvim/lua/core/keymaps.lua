local options = { noremap = true }

-- Fzf
vim.api.nvim_set_keymap('n', '<leader>o', ':Files<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>f', ':BLines<cr>', options)

-- Go to tab by number
vim.api.nvim_set_keymap('n', '<leader>1', '1gt', options)
vim.api.nvim_set_keymap('n', '<leader>2', '2gt', options)
vim.api.nvim_set_keymap('n', '<leader>3', '3gt', options)
vim.api.nvim_set_keymap('n', '<leader>4', '4gt', options)
vim.api.nvim_set_keymap('n', '<leader>5', '5gt', options)
vim.api.nvim_set_keymap('n', '<leader>6', '6gt', options)
vim.api.nvim_set_keymap('n', '<leader>7', '7gt', options)
vim.api.nvim_set_keymap('n', '<leader>8', '8gt', options)
vim.api.nvim_set_keymap('n', '<leader>9', '9gt', options)
vim.api.nvim_set_keymap('n', '<leader>0', ':tablast<cr>', options)

-- Tabs navigationl
vim.api.nvim_set_keymap('n', '<Tab>', 'gt', options)
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', options)

-- Allows to navigate between splits using CTRL + h,j,k,l keys
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)

--hSplit window
vim.api.nvim_set_keymap('n', 'sh', ':split<cr>', options)
vim.api.nvim_set_keymap('n', 'sv', ':vsplit<cr>', options)
