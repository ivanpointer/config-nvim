require("aerial").setup()

require("telescope").load_extension("aerial")

vim.keymap.set("n", "<leader>sf", require("telescope").extensions.aerial.aerial, {})
vim.keymap.set("n", "<leader>sv", "<cmd>AerialToggle!<CR>")
