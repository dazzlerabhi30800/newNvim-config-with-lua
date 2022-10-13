local cmp = require('cmp')
local cmp_buffer = require('cmp_buffer')

cmp.setup({
  sources = {
    { name = 'buffer' },
      -- The rest of your sources...
  },
  sorting = {
    comparators = {
      function(...) return cmp_buffer:compare_locality(...) end,
      -- The rest of your comparators...
    }
  }
})
