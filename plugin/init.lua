-- =============================================================================
-- File        : init.lua
-- Author      : yukimemi
-- Last Change : 2025/01/26 18:39:41.
-- =============================================================================

local deck = require('deck')

deck.register_start_preset('chronicle_read', function()
  deck.start({
    name = 'chronicle_read',
    execute = function(ctx)
      for _, line in ipairs(vim.fn.readfile(vim.g.chronicle_read_path)) do
        ctx.item({
          display_text = line,
          data = {
            filename = line,
          },
        })
      end
      ctx.done()
    end,
    actions = {
      require('deck').alias_action('default', 'open'),
    },
  })
end)

deck.register_start_preset('chronicle_write', function()
  deck.start({
    name = 'chronicle_write',
    execute = function(ctx)
      for _, line in ipairs(vim.fn.readfile(vim.g.chronicle_write_path)) do
        ctx.item({
          display_text = line,
          data = {
            filename = line,
          },
        })
      end
      ctx.done()
    end,
    actions = {
      require('deck').alias_action('default', 'open'),
    },
  })
end)
