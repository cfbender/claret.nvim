local M = {}

local function hex_to_rgb(hex)
  local value = hex:gsub('#', '')
  return tonumber(value:sub(1, 2), 16), tonumber(value:sub(3, 4), 16), tonumber(value:sub(5, 6), 16)
end

function M.deep_merge(...)
  return vim.tbl_deep_extend('force', ...)
end

function M.blend(fg, bg, alpha)
  local fr, fg_g, fb = hex_to_rgb(fg)
  local br, bg_g, bb = hex_to_rgb(bg)
  local function mix(a, b)
    return math.floor((alpha * a) + ((1 - alpha) * b) + 0.5)
  end

  return string.format('#%02X%02X%02X', mix(fr, br), mix(fg_g, bg_g), mix(fb, bb))
end

function M.none_if_transparent(config, value)
  if config.transparent then
    return 'NONE'
  end

  return value
end

function M.flatten_groups(parts)
  local out = {}

  for _, part in ipairs(parts) do
    for name, spec in pairs(part) do
      out[name] = spec
    end
  end

  return out
end

return M
