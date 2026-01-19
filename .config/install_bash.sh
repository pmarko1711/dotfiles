#!/usr/bin/env bash
set -euo pipefail

TARGET="$HOME/.bashrc"
START_MARKER="# >>> bashrc_local include start >>>"

if grep -qF "$START_MARKER" "$TARGET" 2>/dev/null; then
    printf 'Block already present in %s\n' "$TARGET" >&2
    exit 0
fi

cat >> "$TARGET" <<'EOF'

# >>> bashrc_local include start >>>
if [ -f "$HOME/.config/bash/bashrc_local" ]; then
    source "$HOME/.config/bash/bashrc_local"
else
    printf 'Error: %s not found\n' "$HOME/.config/bash/bashrc_local" >&2
fi
# <<< bashrc_local include end <<<

EOF

printf 'Appended block to %s\n' "$TARGET"