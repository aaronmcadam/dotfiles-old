local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

colorizer.setup({ '*' }, {
  names = false, -- "Name" codes like "Blue" or "blue"
})
