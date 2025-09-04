
return{
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup ({
            hidden = true,
            open_mapping = [[<c-\>]],
        })
    end
}
