vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" }
})

vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis main<CR>", {})
