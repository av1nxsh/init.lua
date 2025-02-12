return{
    "Mr-LLLLL/cool-chunk.nvim",
    event = { "CursorHold", "CursorHoldI" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("cool-chunk").setup({})
    end
}
