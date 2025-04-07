return {
    -- the colorscheme should be available when starting Neovim
    {
      "folke/tokyonight.nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        -- load the colorscheme here
        require("tokyonight").setup({
            style = "moon",
            transparent = true,
        })
      end,
    },
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        config = function()
            require("dracula").setup({
                transparent_bg = true,
            })
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                styles = {
                    types = "NONE",
                    methods = "italic",
                    numbers = "NONE",
                    strings = "NONE",
                    comments = "italic",
                    keywords = "bold,italic",
                    constants = "NONE",
                    functions = "bold",
                    operators = "NONE",
                    variables = "NONE",
                    parameters = "italic",
                    conditionals = "italic",
                    virtual_text = "NONE",
                },
--                 colors = {
--                     cursorline = "#3F0000",
--                 },
                options = {
                    transparency = true,
                    cursorline = true,
                },
            })
            vim.cmd("colorscheme onedark")
        end,
    }
}
