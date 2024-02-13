-- Install Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin List
require("lazy").setup({
{
  -- Theme
  "ellisonleao/gruvbox.nvim",
  priority = 1000
},
{
  -- Status
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {"nvim-tree/nvim-web-devicons"}
},
{
  -- Explorer
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {"nvim-tree/nvim-web-devicons", "utilyre/barbecue.nvim", "SmiteshP/nvim-navic"}
},
{
  -- Buffer
  "romgrk/barbar.nvim",
  dependencies = {"lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons"},
  init = function() vim.g.barbar_auto_setup = false end,
  config = true
},
{
  -- Whitespace
  "johnfrankmorgan/whitespace.nvim"
},
{
  -- Highlight
  "nvim-treesitter/nvim-treesitter"
},
{
  -- Comment
  "numToStr/Comment.nvim",
  lazy = false,
  config = true
},
{
  -- Autopairs
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = true
},
{
  -- Find
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {"nvim-lua/plenary.nvim"},
  config = true
},
{
  -- LSP
  "williamboman/mason.nvim",
  lazy = false,
  dependencies = {"williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"}
},
{
  -- Complete
  "hrsh7th/nvim-cmp",
  lazy = false,
  dependencies = {"hrsh7th/cmp-nvim-lsp", "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-path"}
},
{
  -- Snippet
  "L3MON4D3/LuaSnip",
  version = "v2.*"
},
{
  -- Org Mode
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  event = 'VeryLazy',
  config = function()
    -- Load treesitter grammar for org
    require('orgmode').setup_ts_grammar()

    -- Setup treesitter
    require('nvim-treesitter.configs').setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
      },
      ensure_installed = { 'org' },
    })

    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/Org/**/*',
      org_default_notes_file = '~/Org/Notes.org',
    })
  end,
}
})
