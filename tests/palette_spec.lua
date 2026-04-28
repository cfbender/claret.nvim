local helpers = require('tests.helpers')

local palette = require('claret.palette')
local config = require('claret.config')

helpers.assert_eq(palette.dark.bg, '#180810', 'dark bg')
helpers.assert_eq(palette.dark.slate_1, '#8995A8', 'dark slate accent')
helpers.assert_eq(palette.light.bg, '#F5E6E2', 'light bg')
helpers.assert_eq(palette.light.gold_1, '#946000', 'light walnut gold')

local defaults = config.defaults()
helpers.assert_eq(defaults.variant, 'auto', 'default variant')
helpers.assert_eq(defaults.transparent, false, 'default transparency')
helpers.assert_eq(defaults.italics.comments, true, 'default comment italics')

print('palette/config ok')
