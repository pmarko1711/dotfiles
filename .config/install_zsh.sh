#!/usr/bin/env bash
set -euo pipefail

TARGET="$HOME/.zshrc"
START_MARKER="# >>> zshrc_local include start >>>"

if grep -qF "$START_MARKER" "$TARGET" 2>/dev/null; then
    printf 'Block already present in %s\n' "$TARGET" >&2
    exit 0
fi

cat >> "$TARGET" <<'EOF'

# >>> zshrc_local include start >>>
if [ -f "$HOME/.config/zsh/zshrc_local" ]; then
    source "$HOME/.config/zsh/zshrc_local"
else
    printf 'Error: %s not found\n' "$HOME/.config/zsh/zshrc_local" >&2
fi
# <<< zshrc_local include end <<<

EOF

printf 'Appended block to %s\n' "$TARGET"