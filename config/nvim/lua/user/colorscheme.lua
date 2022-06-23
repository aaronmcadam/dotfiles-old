local colorscheme = "tokyonight"

vim.g.tokyonight_colors = { fg_gutter = "#707cb2", comment = "#709db2", dark5 = "#709db2" }

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
