-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Open Neo-tree on startup
    vim.cmd("Neotree show")
    -- Move focus back to the main buffer (the last non-Neotree window)
    vim.defer_fn(function()
      vim.cmd("wincmd p")
    end, 50) -- slight delay ensures Neo-tree has finished opening
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  command = "set rnu nu",
})
