local nightfox_status_ok, nightfox = pcall(require, "nightfox")
if not nightfox_status_ok then
  return
end

nightfox.setup({
  options = {
    transparent = true
  }
})

local colorscheme = "duskfox"

local colorscheme_status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not colorscheme_status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
