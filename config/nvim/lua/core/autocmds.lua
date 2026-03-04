
-- Python-specific
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("textyankpost", {
  desc = "highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

-- Treesitter based highlight
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function () vim.treesitter.start() end,
})

