return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    })

    require("telescope").load_extension("ui-select")

    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-t>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
  end,
}
