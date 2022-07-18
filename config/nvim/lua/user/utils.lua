local M = {}

function M.reload_config()
  require("plenary.reload").reload_module("user")
  dofile(vim.env.MYVIMRC)
  print("Config reloaded")
end

return M
