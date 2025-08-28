return {
  'Saghen/blink.cmp',
  opts = {
    snippets = { friendly_snippets = false, expand = function() end }, -- disable snippets
    signature = { enabled = true },
    keymap = {
      preset = 'default',
      ['<Tab>']   = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<CR>']    = { 'accept', 'fallback' },
      ['<C-Space>'] = { 'show' },
    },
    completion = {
      trigger = {
        show_on_keyword = true,
        show_on_trigger_character = true,
        show_on_insert = true,
      },
      menu = { auto_show = true, border = 'rounded' },
      list  = { selection = { preselect = true, auto_insert = true } },
      documentation = { auto_show = true, auto_show_delay_ms = 250 },
    },
    sources = { default = { 'lsp', 'path', 'buffer' } },
  },
}