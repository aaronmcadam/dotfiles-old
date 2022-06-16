local status_ok, jester = pcall(require, "jester")
if not status_ok then
  return
end

jester.setup({
  cmd = "yarn nx test --testFile=$file", -- run command
})
