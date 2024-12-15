return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        config = function()
            local telescope = require("telescope")

            telescope.setup({
                extensions = {
                    fzf = {}
                }
            })

            telescope.load_extension("fzf")
        end
    },
    { "nvim-telescope/telescope-file-browser.nvim" }
}
