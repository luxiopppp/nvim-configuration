return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  init = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>sc"] = { ":Silicon<CR>", "Snapshot Code" },
    }, { mode = "v" })
  end,
  config = function()
    require("silicon").setup({
      -- Configuration here, or leave empty to use defaults
      font = "CaskaydiaCove NF=34;Noto Color Emoji=34"
    })
  end
}
