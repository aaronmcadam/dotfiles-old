local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = "Organize imports"
  }
  vim.lsp.buf.execute_command(params)
end

return {
  commands = {
      OrganizeImports = {
        organize_imports,
        description = "Organize imports"
      }
  },
}
