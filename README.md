# claret.nvim

Warm Neovim colorscheme with burgundy, gold, sage palette inspired by mise docs theme.

## Variants

- `claret` — dark
- `claret-light` — light

## Install

```lua
{
  'yourname/claret.nvim',
  priority = 1000,
  config = function()
    require('claret').setup({
      variant = 'auto',
      transparent = false,
    })
    vim.cmd.colorscheme('claret')
  end,
}
```

## Configuration

```lua
require('claret').setup({
  variant = 'auto',
  transparent = true,
  italics = {
    comments = true,
    keywords = true,
    parameters = true,
    decorators = true,
  },
  groups = {},
  overrides = function(colors)
    return {}
  end,
})
```

## Supported integrations

- blink.cmp
- snacks.nvim
- noice.nvim
- which-key.nvim
- flash.nvim
- gitsigns.nvim
- todo-comments.nvim
- indent-blankline.nvim
- rainbow-delimiters.nvim
- aerial.nvim
- heirline.nvim
- lualine.nvim
- tiny-inline-diagnostic.nvim
- toggleterm.nvim
- grapple.nvim
- codediff.nvim
- nvim-coverage
- nvim-highlight-colors
- nvim-dap
- nvim-dap-ui
- sidekick.nvim
- copilot.lua
- markdown.nvim
- chezmoi.nvim
- nvim-window-picker
