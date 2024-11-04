--  Core configs
require("linus.core.options")
require("linus.core.keymaps")

--  Lazy config
require("linus.lazy")

--  Plugin configs
require("linus.plugins.nvim-tree")
require("linus.plugins.toggleterm")
require("linus.plugins.lualine")
require("linus.plugins.telescope")
require("linus.plugins.cmp")
require("linus.plugins.treesitter")
require("linus.plugins.autoclose")
require("linus.plugins.gitsigns")
-- require("linus.plugins.py_lsp")
require("linus.plugins.tmux_navigator")
require("linus.plugins.copilot")

--  LSP
require("linus.plugins.lsp.mason")
require("linus.plugins.lsp.lspconfig")
require("linus.plugins.lsp.lsp_saga")
require("linus.plugins.lsp.jdtls")

--  Colorscheme
require("linus.core.colorscheme")
