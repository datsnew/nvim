return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")

            harpoon:setup()

            vim.keymap.set("n", "<A-A>", function() harpoon:list():prepend() end)
            vim.keymap.set("n", "<A-a>", function() harpoon:list():add() end)
            vim.keymap.set("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<A-u>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<A-i>", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<A-o>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<A-p>", function() harpoon:list():select(4) end)
            vim.keymap.set("n", "<leader><A-u>", function() harpoon:list():replace_at(1) end)
            vim.keymap.set("n", "<leader><A-i>", function() harpoon:list():replace_at(2) end)
            vim.keymap.set("n", "<leader><A-o>", function() harpoon:list():replace_at(3) end)
            vim.keymap.set("n", "<leader><A-p>", function() harpoon:list():replace_at(4) end)
        end
}
