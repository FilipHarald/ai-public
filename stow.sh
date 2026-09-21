#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

stow --no-folding -t "$HOME" general
stow --no-folding -t "$HOME" opencode
