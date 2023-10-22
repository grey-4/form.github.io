vim.keymap.set("n", "<S-d>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-s>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<S-c>", ":",opts)
 local ok, bufferline = pcall(require, 'bufferline')
  if not ok then
    return
  end

  bufferline.setup({
    options = {
      numbers = 'ordinal',
      offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = 'center' } },
      hover = {
			enabled = true,
			delay = 200,
			reveal = {'close'}
	},
	}
  })
