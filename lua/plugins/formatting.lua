vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" }
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" }
  }
})

vim.keymap.set({ "n", "v" }, "<leader>fl", function()
  require("conform").format({
    lsp_format = "fallback"
  })
end, {})
