#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
markitdown_dir="$project_dir/vendor/markitdown"
resume_pdf="$project_dir/source/Abdul Aleem - Full Resume 2026.pdf"
resume_md="$project_dir/source/resume.md"

if [[ ! -d "$markitdown_dir/.git" ]]; then
  git clone --depth 1 https://github.com/microsoft/markitdown.git "$markitdown_dir"
fi

mise x uv@latest -- uv run \
  --with "$markitdown_dir/packages/markitdown[pdf]" \
  markitdown "$resume_pdf" -o "$resume_md"

echo "Created $resume_md"
