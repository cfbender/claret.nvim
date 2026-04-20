local helpers = require('tests.helpers')
local claret = require('claret')

vim.o.background = 'dark'
claret.setup({ variant = 'auto' })
claret.load()
helpers.assert_eq(vim.g.colors_name, 'claret', 'auto picks dark')

local end_of_buffer = helpers.get_hl('EndOfBuffer')
helpers.assert_eq(string.format('#%06X', end_of_buffer.bg), '#180E10', 'opaque EndOfBuffer bg')

vim.o.background = 'light'
claret.load()
helpers.assert_eq(vim.g.colors_name, 'claret-light', 'auto picks light')

claret.setup({
  variant = 'dark',
  transparent = true,
  overrides = function(colors)
    return { rose_1 = '#FF00FF' }
  end,
  groups = {
    Normal = { fg = '#FFFFFF', bg = 'NONE' },
  },
})
claret.load()

local normal = helpers.get_hl('Normal')
helpers.assert_eq(normal.bg, nil, 'transparent bg maps to nil')
helpers.assert_eq(string.format('#%06X', normal.fg), '#FFFFFF', 'group override wins')

print('load ok')
