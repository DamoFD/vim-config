local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map('n', '<leader>lg', '<cmd>LazyGit<CR>', options)
