return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "zbirenbaum/copilot.lua" },
            -- { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken", -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
        },
        -- See Commands section for default commands if you want to lazy load on them
        keys = {
            { "<leader>ac", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot" },
            { "<leader>ae", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
            { "<leader>ar", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
            { "<leader>af", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
            { "<leader>ao", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
            { "<leader>ad", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
            { "<leader>at", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
            { "<leader>am", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
            { "<leader>as", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for Selection" },
        }
    },
}
