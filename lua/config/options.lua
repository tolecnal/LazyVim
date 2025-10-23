-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local term = vim.env.TERM or ""

local osc52_terminals = {
  ["xterm"] = true,
  ["xterm-256color"] = true,
  ["xterm-kitty"] = true,
  ["alacritty"] = true,
  ["screen"] = true,
  ["tmux"] = true,
  ["tmux-256color"] = true,
}

local function term_supports_osc52(termname)
  for t, _ in pairs(osc52_terminals) do
    if termname:find(t, 1, true) then
      return true
    end
  end
  return false
end

if term_supports_osc52(term) then
  local function paste()
    return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
  end

  local osc52 = require("vim.ui.clipboard.osc52")
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }
end
