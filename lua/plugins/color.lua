local theme = 'onedark'

if theme == 'tokyo' then
    return {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
            })
           require('tokyonight').load()
        end
    }
elseif theme == 'onedark' then
    return {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('onedark').setup({
                toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
                toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
                style='darker',
                transparent = true,
            })
            require('onedark').load()
        end
    }
elseif theme =='nordic' then
    return {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').setup({
                transparent = {
                    bg = true,
                    float= true
                }
            })
            require('nordic').load()
        end
    }
elseif theme =='dracula' then
    return {
        'Mofiqul/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('dracula').setup({
            		transparent_bg = true,
            })
            vim.cmd.colorscheme 'dracula'
        end
    }
elseif theme =='rose' then
    return {
        'rose-pine/neovim.nvim',
        name = 'rose-pine',
        lazy = false,
        priority = 1000,
        config = function()
            require('rose-pine').setup({
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
            })
            vim.cmd('colorscheme rose-pine')
        end
    }
elseif theme =='cat' then
    return {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true -- disables setting the background color.
            })
            vim.cmd.colorscheme "catppuccin"

        end
    }
elseif theme =='kanagawa' then
    return {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        priority = 1000,
        config = function()
            require('kanagawa').setup({
                compile = false,             -- enable compiling the colorscheme
                undercurl = true,            -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true},
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,         -- do not set background color
                dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                colors = {                   -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "wave",           -- try "dragon" !
                    light = "lotus"
                }
            })

            -- setup must be called before loading
            vim.cmd("colorscheme kanagawa-dragon")
        end
    }
end
