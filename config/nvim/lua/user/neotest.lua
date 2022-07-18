local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
  return
end

neotest.setup({
  adapters = {
    require('neotest-jest')
  },
  output = {
    enabled = true,
    open_on_run = "short",
  },
})
