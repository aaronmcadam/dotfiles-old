local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

-- Disable while trying Telescope file_browser for everything
-- nvim_tree.setup()
