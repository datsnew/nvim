return {
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "github/copilot.vim"
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets"
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    -- ["<C-k>"] = cmp.mapping.select_prev_item(),
                    -- ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    {
                        { name = "vsnip" },
                        { name = "nvim_lsp" },
                        { name = "luasnip" },
                        { name = "path" },
                        {
                            name = "buffer",
                            option = {
                                get_bufnrs = function()
                                    local bufs = {}
                                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                                        bufs[vim.api.nvim_win_get_buf(win)] = true
                                    end
                                    return vim.tbl_keys(bufs)
                                end,
                            },
                        },
                    },
                    { name = "nvim_lsp" },
                })
            })
           cmp.setup.filetype({'sql', 'mysql', 'plsql'}, {
                sources = {
                    { name = 'vim-dadbod-completion' },
                    { name = 'buffer' },
                },
})
        end,
    },
}

