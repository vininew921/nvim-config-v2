function ChangeColor(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)
end

return { 
    'ellisonleao/gruvbox.nvim', 
    name = 'gruvbox',
    config = function()
        require('gruvbox').setup()

        vim.cmd("colorscheme gruvbox")

        ChangeColor()
    end
}
