local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)


require 'nvim-lsp-installer'.setup{
  automatic_installation=true
}
require'manualservers'
-- luasnip setup
local luasnip = require 'luasnip'
luasnip.config.set_config{
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
}

vim.keymap.set({"i","s"},"<c-k>",function()
  if luasnip.expand_or_jumpable() then 
    luasnip.expand_or_jump()
  end
end,{ silent = true})

vim.keymap.set({"i","s"},"<c-j>",function()
  if luasnip.jumpable(-1) then 
    luasnip.jump(-1)
  end
end,{ silent = true})

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }
    -- ,
    -- ['<Tab>'] = cmp.mapping(function(fallback)
    --   if cmp.visible() then
    --     cmp.select_next_item()
    --   elseif luasnip.expand_or_jumpable() then
    --     luasnip.expand_or_jump()
    --   else
    --     fallback()
    --   end
    -- end, { 'i', 's' }),
    -- ['<S-Tab>'] = cmp.mapping(function(fallback)
    --   if cmp.visible() then
    --     cmp.select_prev_item()
    --   elseif luasnip.jumpable(-1) then
    --     luasnip.jump(-1)
    --   else
    --     fallback()
    --   end
    -- end, { 'i', 's' }),
 }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
