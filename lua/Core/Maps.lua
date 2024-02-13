-- Leader
vim.g.mapleader = " "

-- Normal
local keyboardToNumber = false

local function calculate3(boolean, first, second)
    if boolean then
        return first
    else
        return second
    end
end

vim.keymap.set("n", "A", function () return calculate3(keyboardToNumber, "1", "A") end, { expr = true })
vim.keymap.set("n", "S", function () return calculate3(keyboardToNumber, "2", "S") end, { expr = true })
vim.keymap.set("n", "D", function () return calculate3(keyboardToNumber, "3", "D") end, { expr = true })
vim.keymap.set("n", "F", function () return calculate3(keyboardToNumber, "4", "F") end, { expr = true })
vim.keymap.set("n", "G", function () return calculate3(keyboardToNumber, "5", "G") end, { expr = true })
vim.keymap.set("n", "J", function () return calculate3(keyboardToNumber, "6", "J") end, { expr = true })
vim.keymap.set("n", "K", function () return calculate3(keyboardToNumber, "7", "K") end, { expr = true })
vim.keymap.set("n", "L", function () return calculate3(keyboardToNumber, "8", "L") end, { expr = true })
vim.keymap.set("n", ";", function () return calculate3(keyboardToNumber, "9", "l") end, { expr = true })
vim.keymap.set("n", "'", function () return calculate3(keyboardToNumber, "0", "'") end, { expr = true })
vim.keymap.set("n", "j", "h")
vim.keymap.set("n", "k", "j")
vim.keymap.set("n", "l", "k")
vim.keymap.set("n", "h", "<ESC>")
vim.keymap.set("n", "H", function ()
keyboardToNumber = not keyboardToNumber
end, { expr = true })

vim.keymap.set("n", "<leader>wv", "<C-w>v")
vim.keymap.set("n", "<leader>wh", "<C-w>s")
vim.keymap.set("n", "<leader>wj", "<C-w>h")
vim.keymap.set("n", "<leader>wk", "<C-w>j")
vim.keymap.set("n", "<leader>wl", "<C-w>k")
vim.keymap.set("n", "<leader>w;", "<C-w>l")

vim.keymap.set("n", "<leader>pu", "<C-u>")
vim.keymap.set("n", "<leader>pd", "<C-d>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader>c", ":cd ~/.config/nvim<CR>")

vim.keymap.set('n', '<leader>nu', function()
vim.o.relativenumber = not vim.o.relativenumber
end)

vim.keymap.set('n', '<leader>wr', function()
vim.o.wrap = not vim.o.wrap
end)

vim.keymap.set("n", "<leader><Tab>", ":BufferNext<CR>")
vim.keymap.set("n", "<leader><S-Tab>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>bk", ":BufferClose<CR>")

vim.keymap.set("n", "<leader>t", ":retab<CR>")

-- Insert
vim.keymap.set("i", "A", function () return calculate3(keyboardToNumber, "1", "A") end, { expr = true })
vim.keymap.set("i", "S", function () return calculate3(keyboardToNumber, "2", "S") end, { expr = true })
vim.keymap.set("i", "D", function () return calculate3(keyboardToNumber, "3", "D") end, { expr = true })
vim.keymap.set("i", "F", function () return calculate3(keyboardToNumber, "4", "F") end, { expr = true })
vim.keymap.set("i", "G", function () return calculate3(keyboardToNumber, "5", "G") end, { expr = true })
vim.keymap.set("i", "J", function () return calculate3(keyboardToNumber, "6", "J") end, { expr = true })
vim.keymap.set("i", "K", function () return calculate3(keyboardToNumber, "7", "K") end, { expr = true })
vim.keymap.set("i", "L", function () return calculate3(keyboardToNumber, "8", "L") end, { expr = true })
vim.keymap.set("i", ";", function () return calculate3(keyboardToNumber, "9", ";") end, { expr = true })
vim.keymap.set("i", "'", function () return calculate3(keyboardToNumber, "0", "'") end, { expr = true })
vim.keymap.set("i", "hh", "<ESC>")
vim.keymap.set("i", "HH", function ()
keyboardToNumber = not keyboardToNumber
end, { expr = true })

-- Visual
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "A", function () return calculate3(keyboardToNumber, "1", "A") end, { expr = true })
vim.keymap.set("v", "S", function () return calculate3(keyboardToNumber, "2", "S") end, { expr = true })
vim.keymap.set("v", "D", function () return calculate3(keyboardToNumber, "3", "D") end, { expr = true })
vim.keymap.set("v", "F", function () return calculate3(keyboardToNumber, "4", "F") end, { expr = true })
vim.keymap.set("v", "G", function () return calculate3(keyboardToNumber, "5", "G") end, { expr = true })
vim.keymap.set("v", "J", function () return calculate3(keyboardToNumber, "6", "J") end, { expr = true })
vim.keymap.set("v", "K", function () return calculate3(keyboardToNumber, "7", "K") end, { expr = true })
vim.keymap.set("v", "L", function () return calculate3(keyboardToNumber, "8", "L") end, { expr = true })
vim.keymap.set("v", ";", function () return calculate3(keyboardToNumber, "9", "l") end, { expr = true })
vim.keymap.set("v", "'", function () return calculate3(keyboardToNumber, "0", "'") end, { expr = true })
vim.keymap.set("v", "j", "h")
vim.keymap.set("v", "k", "j")
vim.keymap.set("v", "l", "k")
vim.keymap.set("v", "h", "<ESC>")
vim.keymap.set("v", "H", function ()
keyboardToNumber = not keyboardToNumber
end, { expr = true })
