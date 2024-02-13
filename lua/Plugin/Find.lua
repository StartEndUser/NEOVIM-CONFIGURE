vim.keymap.set("n", "<leader>ff", function()
require("telescope.builtin").find_files()
os.remove("/home/SEU/.local/share/nvim/telescope_history")
end)

vim.keymap.set("n", "<leader>fg", function()
require("telescope.builtin").live_grep()
os.remove("/home/SEU/.local/share/nvim/telescope_history")
end)

vim.keymap.set("n", "<leader>fb", function()
require("telescope.builtin").buffers()
os.remove("/home/SEU/.local/share/nvim/telescope_history")
end)

vim.keymap.set("n", "<leader>fh", function()
require("telescope.builtin").help_tags()
os.remove("/home/SEU/.local/share/nvim/telescope_history")
end)
