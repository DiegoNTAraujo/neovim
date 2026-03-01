vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" }
})

require("mason").setup()
require("mason-tool-installer").setup({
  ensure_installed = {
    -- LSP
    "html-lsp",
    "css-lsp",
    "lua-language-server",
    -- Formatters
    "stylua"
  }
})

vim.lsp.enable({
  "html",
  "cssls",
  "lua_ls"
})

vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌵"
    }
  },
  float = {
    header = false,
    border = "rounded",
  }
}

vim.keymap.set("n", "<leader>sd", ":lua vim.diagnostic.open_float()<CR>", {})
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", {})
