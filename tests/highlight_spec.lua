local helpers = require('tests.helpers')
local claret = require('claret')

claret.setup({ variant = 'dark' })
claret.load()

local keyword = helpers.get_hl('@keyword')
local func = helpers.get_hl('@function')
local typ = helpers.get_hl('@type')
local str = helpers.get_hl('@string')
local diag = helpers.get_hl('DiagnosticError')
local diff_add = helpers.get_hl('DiffAdd')

helpers.assert_eq(string.format('#%06X', keyword.fg), '#C75B7A', '@keyword')
helpers.assert_eq(string.format('#%06X', func.fg), '#D4A76A', '@function')
helpers.assert_eq(string.format('#%06X', typ.fg), '#8995A8', '@type')
helpers.assert_eq(string.format('#%06X', str.fg), '#8FA86E', '@string')
helpers.assert_eq(string.format('#%06X', diag.fg), '#C44536', 'DiagnosticError')
helpers.assert_eq(string.format('#%06X', diff_add.fg), '#8FA86E', 'DiffAdd')

print('highlight mapping ok')
