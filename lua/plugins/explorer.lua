-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" }
})

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>te", ":NvimTreeToggle<CR>", {})
