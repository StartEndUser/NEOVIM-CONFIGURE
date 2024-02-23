require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "c", "c_sharp", "css", "cpp", "gdscript", "gitignore", "godot_resource", "html", "lua", "make", "nasm", "ninja", "python", "rust",
                      "comment", "doxygen"},

  highlight = {enable = true},
  indent = {enable = false, disable = true}
}
