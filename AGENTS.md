# claret.nvim agent notes

## Repo purpose

Neovim colorscheme with locked Claret palette and structural syntax mapping.

## Core decisions

- Dark bg `#180810`, text `#DDD3C7`, type accent `#8995A8`
- Light bg `#FDF8F3`, text `#2A1F1A`, walnut `#7D5B38`, moss `#5A6B40`, type accent `#4A5670`
- Keywords = rose/burgundy, functions = gold, strings = sage, types = slate, errors = terra
- Keep errors red-family; types are not red-family

## Important files

- `lua/claret/palette.lua` — locked palette values
- `lua/claret/config.lua` — setup defaults and merge
- `lua/claret/theme.lua` — assembles all group tables
- `lua/claret/groups/*.lua` — core groups
- `lua/claret/groups/plugins/*.lua` — plugin integrations
- `colors/*.lua` — colorscheme entrypoints
- `tests/*.lua` — headless smoke checks

## Commands

- `./scripts/test.sh`
- `nvim --headless -u tests/minimal_init.lua -c "lua dofile('tests/load_spec.lua')" -c "qa!"`

## Extension guidance

- Reuse semantic roles from palette; do not invent new hues unless design changes first.
- Prefer adding plugin groups in dedicated files under `lua/claret/groups/plugins/`.
- Keep dark/light mappings structurally identical unless explicit design update says otherwise.
