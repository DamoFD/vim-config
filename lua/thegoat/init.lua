require("thegoat.remap")
require("thegoat.set")
require("thegoat.lsp_config")
require("thegoat.tabnine")
require("thegoat.nvim-comment")
require("thegoat.nvim-diffview")
require("thegoat.nvim-floaterm")
require("thegoat.nvim-gitblame")
require("thegoat.nvim-gitsigns")
require("thegoat.nvim-indent-blankline")
require("thegoat.nvim-lint")
require("thegoat.nvim-trouble")
require("thegoat.nvim-barbar")
require("thegoat.nvim-lualine")
require("thegoat.nvim-lazygit")
require("thegoat.nvim-rainbow-delimiters")
require("thegoat.nvim-cmp")

vim.api.nvim_exec([[
    autocmd BufRead,BufNewFile *.blade.php set filetype=blade
]], false)

vim.g.codeium_disable_bindings = 1
vim.keymap.set('i', '<leader>ic', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<leader>kc', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<leader>jc', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<leader>dc', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
