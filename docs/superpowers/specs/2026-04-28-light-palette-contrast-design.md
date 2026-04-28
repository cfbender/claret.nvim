# Light Palette Contrast Improvement

## Problem

Light mode feels washed out — insufficient contrast between background and syntax colors, particularly for gold (functions), sage (strings), and slate (types). Operators and punctuation too faint.

## Changes

### Palette (`lua/claret/palette.lua`)

**Backgrounds — warmer, darker:**

| Token     | Before    | After     |
|-----------|-----------|-----------|
| bg        | `#FDF8F3` | `#F4EBDF` |
| bg_soft   | `#F5EDE3` | `#E9DECE` |
| bg_mute   | `#E8DDD0` | `#DAD0C0` |
| divider   | `#D4C8B8` | `#C8BDA8` |

**Text — darker secondary/tertiary:**

| Token  | Before    | After     |
|--------|-----------|-----------|
| text_2 | `#5A4D42` | `#4D4035` |
| text_3 | `#7D7068` | `#6B5F55` |
| text_4 | `#A09489` | `#928578` |

text / text_1 unchanged (`#2A1F1A`).

**Syntax colors — more saturated:**

| Token   | Before    | After     | Role       |
|---------|-----------|-----------|------------|
| gold_1  | `#7D5B38` | `#96600A` | Functions  |
| gold_2  | `#9A7245` | `#A87010` | Fn detail  |
| gold_3  | `#5F4429` | unchanged | —          |
| sage_1  | `#5A6B40` | `#456B28` | Strings    |
| sage_2  | `#4A5934` | `#3A5A20` | String alt |
| slate_1 | `#4A5670` | `#3A4E6E` | Types      |
| slate_2 | `#3A4558` | `#2E3E5A` | Type alt   |

Rose and terra families unchanged.

### Highlight Groups

**`lua/claret/groups/syntax.lua`:**
- `Operator`: fg `text_3` → `text_2`

**`lua/claret/groups/treesitter.lua`:**
- `@operator`: fg `text_3` → `text_2`
- `@punctuation.delimiter`: fg `text_3` → `text_2`
- `@punctuation.bracket`: fg `text_3` → `text_2`

### Constraints

- Dark mode untouched
- No new hues — only saturation/lightness shifts within existing families
- Structural mapping (keyword=rose, fn=gold, string=sage, type=slate) preserved
