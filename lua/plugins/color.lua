local theme = 'tokyo'

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
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
          	vim.api.nvim_set_hl(0, "", {bg = "none"})
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" , ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none", ctermbg = "none" })
        end
    }
elseif theme == 'onedark' then
    return {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('onedark').setup{
                style='warmer',
            }
            require('onedark').load()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "", {bg = "none"})
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" , ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none", ctermbg = "none" })
        end
    }
elseif theme =='nordic' then
    return {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').setup({
                --		transparent_bg = true,
            })
            require('nordic').load()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            --	vim.api.nvim_set_hl(0, "", {bg = "none"})
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" , ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none", ctermbg = "none" })
        end
    }
elseif theme =='dracula' then
    return {
        'Mofiqul/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('dracula').load()
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            --	vim.api.nvim_set_hl(0, "", {bg = "none"})
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" , ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", ctermbg = "none" })
            vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none", ctermbg = "none" })
        end
    }
end
