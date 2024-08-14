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

vim.api.nvim_exec([[
    autocmd BufRead,BufNewFile *.blade.php set filetype=blade
]], false)
