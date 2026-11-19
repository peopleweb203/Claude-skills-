#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "\${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/skills"

usage() {
  cat <<'EOF'
Usage: bash scripts/install-skills.sh --agent <claude|codex|gemini|all|paperclip>

Copies canonical skills into this workspace's local agent discovery path.
Paperclip skills should be imported from this repository using Paperclip's Skills UI.
EOF
}

if [[ "\${1:-}" == "--help" || "\${1:-}" == "-h" ]]; then usage; exit 0; fi
if [[ "\${1:-}" != "--agent" || -z "\${2:-}" ]]; then usage >&2; exit 2; fi
AGENT="$2"

copy_to() {
  local destination="$1"
  mkdir -p "$destination"
  for skill_dir in "$SOURCE"/*; do
    [[ -d "$skill_dir" && -f "$skill_dir/SKILL.md" ]] || continue
    cp -R "$skill_dir" "$destination/"
  done
  printf 'Installed APS skills into %s\n' "$destination"
}

case "$AGENT" in
  claude) copy_to "$ROOT/.claude/skills" ;;
  codex|gemini) copy_to "$ROOT/.agents/skills" ;;
  all)
    copy_to "$ROOT/.claude/skills"
    copy_to "$ROOT/.agents/skills"
    ;;
  paperclip)
    printf '%s\n' "Paperclip imports from GitHub; add this repository under Skills → Sources and select the desired skills."
    ;;
  *)
    printf 'Unknown agent: %s\n' "$AGENT" >&2
    usage >&2
    exit 2
    ;;
esac
