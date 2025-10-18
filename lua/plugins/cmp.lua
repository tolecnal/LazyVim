-- ~/.config/nvim/lua/plugins/cmp.lua (or similar)
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- other cmp sources
    "tolecnal/icinga2-vim", -- Assuming you've placed your custom source in a path accessible by Lazy
  },
  opts = function(_, opts)
    table.insert(opts.sources, { name = "icinga2" })
    -- You might want to adjust the priority or behavior of the source here
    -- For example:
    -- table.insert(opts.sources, 1, { name = "icinga2", priority = 1000 })
  end,
}
