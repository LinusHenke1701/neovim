--  Core configs
require("linus.core.options")
require("linus.core.colorscheme")
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

--  LSP
require("linus.plugins.lsp.mason")
require("linus.plugins.lsp.lspconfig")
require("linus.plugins.lsp.lsp_saga")
