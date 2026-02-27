vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
  { src = "https://github.com/rafamadriz/friendly-snippets" }
})

require("blink.cmp").setup({
  keymap = {
    preset = "none",
    ["<C-Space>"] = { "show", "hide" },
    ["<CR>"] = { "accept", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
    ["<C-k>"] = { "select_prev", "fallback" }
  },

  appearance = { nerd_font_variant = "mono" },

  completion = {
    ghost_text = {
      enabled = true
    },
    menu = {
      auto_show = false,
      border = "rounded",
      draw = {
        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } }
      }
    },
    documentation = {
      window = {
        border = "rounded"
      },
      auto_show = true,
      auto_show_delay_ms = 500
    }
  },

  sources = { default = { "lsp", "path", "snippets", "buffer" } },

  fuzzy = { implementation = "prefer_rust_with_warning" }
})
