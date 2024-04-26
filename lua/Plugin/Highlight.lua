require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "c", "c_sharp", "css", "cpp" , "gitignore", "godot_resource", "html", "lua", "make", "nasm", "ninja", "python", "rust",
                      "comment", "doxygen"},
--"gdscript"

  highlight = {enable = true},
  indent = {enable = false, disable = true}
}
