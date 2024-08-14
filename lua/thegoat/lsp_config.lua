require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tailwindcss", "intelephense", "pyright", "rust_analyzer", "kotlin_language_server", "tsserver", "gopls" }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

require("lspconfig").tailwindcss.setup {
    cmd = {
        "tailwindcss-language-server",
        "--stdio"
    },

    filetypes = {
        "aspnetcorerazor",
        "astro",
        "astro-markdown",
        "blade",
        "django-html",
        "edge",
        "eelixir",
        "ejs",
        "erb",
        "eruby",
        "gohtml",
        "haml",
        "handlebars",
        "hbs",
        "html",
        "html-eex",
        "jade",
        "leaf",
        "liquid",
        "markdown",
        "mdx",
        "mustache",
        "njk",
        "nunjucks",
        "razor",
        "slim",
        "twig",
        "css",
        "less",
        "postcss",
        "sass",
        "scss",
        "stylus",
        "sugarss",
        "javascript",
        "javascriptreact",
        "reason",
        "rescript",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
    },
    on_attach = on_attach,
}

require("lspconfig").rust_analyzer.setup {
        on_attach = on_attach
}

require("lspconfig").gopls.setup {
        on_attach = on_attach
}

require("lspconfig").intelephense.setup {
    cmd = { "intelephense", "--stdio" },
    on_attach = on_attach
}

require("lspconfig").pyright.setup {
        on_attach = on_attach
}

require("lspconfig").kotlin_language_server.setup {
    on_attach = on_attach
}

require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    filetypes = {"javascript", "javascriptreact", "jsx", "typescript", "typescriptreact", "tsx"},
    capabilities = capabilities,
}require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tailwindcss", "intelephense", "pyright", "rust_analyzer", "kotlin_language_server", "tsserver", "gopls" }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

require("lspconfig").tailwindcss.setup {
    cmd = {
        "tailwindcss-language-server",
        "--stdio"
    },

    filetypes = {
        "aspnetcorerazor",
        "astro",
        "astro-markdown",
        "blade",
        "django-html",
        "edge",
        "eelixir",
        "ejs",
        "erb",
        "eruby",
        "gohtml",
        "haml",
        "handlebars",
        "hbs",
        "html",
        "html-eex",
        "jade",
        "leaf",
        "liquid",
        "markdown",
        "mdx",
        "mustache",
        "njk",
        "nunjucks",
        "razor",
        "slim",
        "twig",
        "css",
        "less",
        "postcss",
        "sass",
        "scss",
        "stylus",
        "sugarss",
        "javascript",
        "javascriptreact",
        "reason",
        "rescript",
        "typescript",
        "typescriptreact",
        "vue",
        "svelte",
    },
    on_attach = on_attach,
}

require("lspconfig").rust_analyzer.setup {
        on_attach = on_attach
}

require("lspconfig").gopls.setup {
        on_attach = on_attach
}

require("lspconfig").intelephense.setup {
    cmd = { "intelephense", "--stdio" },
    on_attach = on_attach
}

require("lspconfig").pyright.setup {
        on_attach = on_attach
}

require("lspconfig").kotlin_language_server.setup {
    on_attach = on_attach
}

require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    filetypes = {"javascript", "javascriptreact", "jsx", "typescript", "typescriptreact", "tsx"},
    capabilities = capabilities,
}

