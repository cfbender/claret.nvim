#!/usr/bin/env sh
set -eu

staged_files=$(git diff --cached --name-only --diff-filter=ACMR)

should_generate=0
for file in $staged_files; do
  case "$file" in
    lua/claret/palette.lua|scripts/generate_ports.lua|ports/*)
      should_generate=1
      break
      ;;
  esac
done

if [ "$should_generate" -eq 0 ]; then
  exit 0
fi

nvim --headless -u tests/minimal_init.lua -c "lua dofile('scripts/generate_ports.lua')" -c "qa!"

git add \
  ports/ghostty/claret-dark.conf \
  ports/opencode/claret.json \
  ports/yazi/claret-dark.yazi/flavor.toml \
  ports/yazi/claret-dark.yazi/tmtheme.xml \
  ports/bat/ClaretDark.tmTheme \
  ports/zellij/claret-dark.kdl \
  ports/kitty/claret.conf \
  ports/starship/claret.toml \
  ports/vicinae/claret-dark.toml
