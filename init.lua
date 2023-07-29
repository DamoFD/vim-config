require("thegoat")
require("thegoat.remap")

vim.cmd('filetype plugin on')
vim.opt.omnifunc = 'syntaxcomplete#Complete'
vim.opt.completeopt = {'menuone', 'menu', 'longest'}
vim.api.nvim_exec([[
    autocmd FileType html,blade set omnifunc=htmlcomplete#CompleteTags
]], false)

vim.api.nvim_set_option("clipboard", "unnamed")
vim.o.guifont = "FantasqueSansMono Nerd Font Mono:h10"
