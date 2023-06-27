-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.leader = ','
lvim.keys.normal_mode["ff"] = ":bprev<cr>"
lvim.keys.normal_mode["fj"] = ":bnext<cr>"
lvim.builtin.terminal.open_mapping = "<leader>t"
vim.keymap.set("i", "jj", "<ESC>", {silent = true})

-- Formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  {
    name = "prettier",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },
}
lvim.format_on_save.enabled = true


-- CMP
local cmp = require('cmp')
lvim.builtin.cmp.mapping = {
  ['J'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
  ['K'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
  ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
}

-- Plugins
lvim.plugins = {
  'github/copilot.vim'
}
