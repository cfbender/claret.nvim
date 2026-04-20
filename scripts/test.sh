#!/usr/bin/env sh
set -eu

nvim --headless -u tests/minimal_init.lua \
  -c "lua dofile('tests/palette_spec.lua')" \
  -c "qa!"

nvim --headless -u tests/minimal_init.lua \
  -c "lua dofile('tests/load_spec.lua')" \
  -c "qa!"

nvim --headless -u tests/minimal_init.lua \
  -c "lua dofile('tests/highlight_spec.lua')" \
  -c "qa!"

nvim --headless -u tests/minimal_init.lua \
  -c "lua dofile('tests/plugins_spec.lua')" \
  -c "qa!"

nvim --headless -u tests/minimal_init.lua \
  -c "lua dofile('tests/ports_spec.lua')" \
  -c "qa!"

test -f README.md
test -f AGENTS.md
test -f .github/workflows/ci.yml
