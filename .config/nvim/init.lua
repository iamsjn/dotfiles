-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.highlight({ "Folded", "guibg=transparent" })
vim.cmd("setlocal spell spelllang=en_us")
vim.cmd.highlight({ "CursorLine", "guifg=orange guibg=transparent" })
