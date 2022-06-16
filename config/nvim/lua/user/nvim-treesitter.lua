local status_ok, configs = pcall(require, "nvim_treesitter")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = "all",
  autopairs = {
		enable = true,
	},
  autotag = {
    enable = true,
  }
})
