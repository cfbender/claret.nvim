local editor = require('claret.groups.editor')
local syntax = require('claret.groups.syntax')
local treesitter = require('claret.groups.treesitter')
local lsp = require('claret.groups.lsp')
local diff = require('claret.groups.diff')
local markup = require('claret.groups.markup')
local blink_cmp = require('claret.groups.plugins.blink_cmp')
local snacks = require('claret.groups.plugins.snacks')
local noice = require('claret.groups.plugins.noice')
local which_key = require('claret.groups.plugins.which_key')
local flash = require('claret.groups.plugins.flash')
local gitsigns = require('claret.groups.plugins.gitsigns')
local todo_comments = require('claret.groups.plugins.todo_comments')
local indent_blankline = require('claret.groups.plugins.indent_blankline')
local rainbow_delimiters = require('claret.groups.plugins.rainbow_delimiters')
local aerial = require('claret.groups.plugins.aerial')
local heirline = require('claret.groups.plugins.heirline')
local lualine = require('claret.groups.plugins.lualine')
local tiny_inline_diagnostic = require('claret.groups.plugins.tiny_inline_diagnostic')
local toggleterm = require('claret.groups.plugins.toggleterm')
local grapple = require('claret.groups.plugins.grapple')
local codediff = require('claret.groups.plugins.codediff')
local nvim_coverage = require('claret.groups.plugins.nvim_coverage')
local nvim_highlight_colors = require('claret.groups.plugins.nvim_highlight_colors')
local nvim_dap = require('claret.groups.plugins.nvim_dap')
local nvim_dap_ui = require('claret.groups.plugins.nvim_dap_ui')
local sidekick = require('claret.groups.plugins.sidekick')
local copilot = require('claret.groups.plugins.copilot')
local markdown = require('claret.groups.plugins.markdown')
local chezmoi = require('claret.groups.plugins.chezmoi')
local nvim_window_picker = require('claret.groups.plugins.nvim_window_picker')
local util = require('claret.util')

local M = {}

function M.build(colors, config)
  return util.flatten_groups({
    editor.get(colors, config),
    syntax.get(colors, config),
    treesitter.get(colors, config),
    lsp.get(colors, config),
    diff.get(colors, config),
    markup.get(colors, config),
    blink_cmp.get(colors, config),
    snacks.get(colors, config),
    noice.get(colors, config),
    which_key.get(colors, config),
    flash.get(colors, config),
    gitsigns.get(colors, config),
    todo_comments.get(colors, config),
    indent_blankline.get(colors, config),
    rainbow_delimiters.get(colors, config),
    aerial.get(colors, config),
    heirline.get(colors, config),
    lualine.get(colors, config),
    tiny_inline_diagnostic.get(colors, config),
    toggleterm.get(colors, config),
    grapple.get(colors, config),
    codediff.get(colors, config),
    nvim_coverage.get(colors, config),
    nvim_highlight_colors.get(colors, config),
    nvim_dap.get(colors, config),
    nvim_dap_ui.get(colors, config),
    sidekick.get(colors, config),
    copilot.get(colors, config),
    markdown.get(colors, config),
    chezmoi.get(colors, config),
    nvim_window_picker.get(colors, config),
  })
end

function M.lualine(colors, config)
  return lualine.theme(colors, config)
end

return M
