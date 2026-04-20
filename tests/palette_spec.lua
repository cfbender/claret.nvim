local helpers = require('tests.helpers')

local palette = require('claret.palette')
local config = require('claret.config')

helpers.assert_eq(palette.dark.bg, '#180E10', 'dark bg')
helpers.assert_eq(palette.dark.type_1, '#8995A8', 'dark type accent')
helpers.assert_eq(palette.light.bg, '#FDF8F3', 'light bg')
helpers.assert_eq(palette.light.gold_1, '#7D5B38', 'light walnut gold')

local defaults = config.defaults()
helpers.assert_eq(defaults.variant, 'auto', 'default variant')
helpers.assert_eq(defaults.transparent, false, 'default transparency')
helpers.assert_eq(defaults.italics.comments, true, 'default comment italics')

print('palette/config ok')
