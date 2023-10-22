-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
	adaptive_size = false,
  },
  renderer = {
    group_empty = true,
	indent_markers = {
      enable = true,
      icons = {
       corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",  
        },
    },
	icons = {
			show ={
              file = true,
			  folder = false,
			  folder_arrow = true,
			  git = false,
			},
	},
},
    filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<c-q>', ':NvimTreeFindFileToggle<CR>')


