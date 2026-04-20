local config_mod = require('claret.config')
local palette = require('claret.palette')
local theme = require('claret.theme')

local M = {}

M.config = config_mod.defaults()

function M.setup(user)
  M.config = config_mod.merge(user)
end

local function resolve_variant(variant)
  if variant == 'light' then
    return 'light'
  end

  if variant == 'dark' then
    return 'dark'
  end

  return vim.o.background == 'light' and 'light' or 'dark'
end

function M.load(variant)
  local selected = resolve_variant(variant or M.config.variant)
  local colors = vim.deepcopy(palette[selected])
  local override_colors = M.config.overrides(colors, M.config) or {}
  colors = vim.tbl_extend('force', colors, override_colors)
  local groups = theme.build(colors, M.config)
  groups = vim.tbl_extend('force', groups, M.config.groups)

  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.g.colors_name = selected == 'light' and 'claret-light' or 'claret'

  for name, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, name, spec)
  end
end

return M
