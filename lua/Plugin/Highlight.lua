require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "c", "c_sharp", "cpp", "gdscript", "gitignore", "godot_resource", "lua", "make", "nasm", "ninja", "python", "rust",
                      "comment", "doxygen"},

  highlight = {enable = true},
  indent = {enable = false, disable = true}
}
