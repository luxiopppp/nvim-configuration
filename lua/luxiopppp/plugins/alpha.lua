return {
  "goolord/alpha-nvim",
  event = "VimEnter",

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("ee", "  > Open file explorer", "<cmd>NvimTreeOpen<CR>"),
      dashboard.button("ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
      --dashboard.button("c", "  > Config", ":e $MYVIMRC <CR>"),
      dashboard.button("m", "󱌣  > Mason", ":Mason<CR>"),
      dashboard.button("l", "󰒲  > Lazy", ":Lazy<CR>"),
      dashboard.button("u", "󰂖  > Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
