return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true ,
    -- preset = {header =[[
    --                                                                        
    --          ████ ██████           █████      ██                     
    --         ███████████             █████                             
    --         █████████ ███████████████████ ███   ███████████   
    --        █████████  ███    █████████████ █████ ██████████████   
    --       █████████ ██████████ █████████ █████ █████ ████ █████   
    --     ███████████ ███    ███ █████████ █████ █████ ████ █████  
    --    ██████  █████████████████████ ████ █████ █████ ████ ██████]]
    --         },
--  preset = {header =[[                                                                                             
--                                                                                   
--     ,---,                   ___                                                   
--   .'  .' `\               ,--.'|_                                                 
-- ,---.'     \              |  | :,'                 ,---,                    .---. 
-- |   |  .`\  |             :  : ' :  .--.--.    ,-+-. /  |                  /. ./| 
-- :   : |  '  |  ,--.--.  .;__,'  /  /  /    '  ,--.'|'   |   ,---.       .-'-. ' | 
-- |   ' '  ;  : /       \ |  |   |  |  :  /`./ |   |  ,"' |  /     \     /___/ \: | 
-- '   | ;  .  |.--.  .-. |:__,'| :  |  :  ;_   |   | /  | | /    /  | .-'.. '   ' . 
-- |   | :  |  ' \__\/: . .  '  : |__ \  \    `.|   | |  | |.    ' / |/___/ \:     ' 
-- '   : | /  ;  ," .--.; |  |  | '.'| `----.   \   | |  |/ '   ;   /|.   \  ' .\    
-- |   | '` ,/  /  /  ,.  |  ;  :    ;/  /`--'  /   | |--'  '   |  / | \   \   ' \ | 
-- ;   :  .'   ;  :   .'   \ |  ,   /'--'.     /|   |/      |   :    |  \   \  |--"  
-- |   ,.'     |  ,     .-./  ---`-'   `--'---' '---'        \   \  /    \   \ |     
-- '---'        `--`---'                                      `----'      '---"      ]]
-- },
 preset = {header =[[                                                                                             
________          __                               
\______ \ _____ _/  |_  ______ ____   ______  _  __
 |    |  \\__  \\   __\/  ___//    \_/ __ \ \/ \/ /
 |    `   \/ __ \|  |  \___ \|   |  \  ___/\     / 
/_______  (____  /__| /____  >___|  /\___  >\/\_/  
        \/     \/          \/     \/     \/        ]]
},
  sections = {
    { section = "header" },
    { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
    { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
    { section = "startup" },
} },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
