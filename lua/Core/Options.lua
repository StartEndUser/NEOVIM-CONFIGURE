-- History
vim.o.shadafile = "NONE"

-- Line
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true

-- Indent
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true

-- Wrap
vim.o.wrap = true

-- Mouse
vim.opt.mouse:append("a")

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Create
vim.o.splitright = true
vim.o.splitbelow = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Appearance
vim.o.termguicolors = true
vim.o.signcolumn = "yes"

-- File
vim.o.backup = false
vim.o.writebackup = false

-- Update Time
vim.o.updatetime = 300
