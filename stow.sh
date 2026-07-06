#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

stow --no-folding -t "$HOME" general
stow --no-folding -t "$HOME" opencode

# openclaw/ is reserved for future OpenClaw-specific assets. Do not stow it
# while it only contains placeholder files, otherwise Stow would create
# unrelated files directly under $HOME.
