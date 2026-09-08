#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "Usage: $0 <category> <summary> [paths]" >&2
  exit 2
fi

project_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
log_file="$project_root/AGENT_ACTIVITY_LOG.md"
timestamp="$(date --iso-8601=seconds)"
category="${1//|/\\|}"
summary="${2//|/\\|}"
paths="${3:-—}"
paths="${paths//|/\\|}"

printf '| %s | %s | %s | %s |\n' "$timestamp" "$category" "$summary" "$paths" >> "$log_file"
echo "Logged: $category"
