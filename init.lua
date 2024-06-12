-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ensure the undo directory exists
local undodir = vim.fn.expand("~/.undo/")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Set the undo directory
vim.o.undodir = undodir
vim.o.undofile = true
