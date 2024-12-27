return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function()
            require("harpoon"):setup()
        end
    },
    {
        "NMAC427/guess-indent.nvim",
        opts = {}
    },
    {
        "bennypowers/nvim-regexplainer",
        lazy = true,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "MunifTanjim/nui.nvim"
        },
        opts = {
            auto = true,
        }
    },
    {
        "mbbill/undotree",
    },
    {
        "monaqa/dial.nvim",
        config = function()
            local augend = require("dial.augend")
            require("dial.config").augends:register_group {
                default = {
                    augend.integer.alias.decimal,
                    augend.integer.alias.hex,
                    augend.constant.alias.bool,
                    augend.date.alias["%Y-%m-%d"],
                    augend.date.alias["%Y/%m/%d"],
                    augend.date.alias["%m/%d"],
                    -- augend.date.alias["%d/%m"], -- I honestly forgot if we write the month or day first on these short dates in Sweden
                    augend.date.alias["%H:%M"],
                }
            }
        end
    }
}
