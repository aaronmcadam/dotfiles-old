local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
  return
end

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' }
  }
})
