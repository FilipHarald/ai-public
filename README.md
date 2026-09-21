# ai-public

Public or shareable AI workflow assets.

This repo is for public skills and non-private opencode assets. Tool config stays in dotfiles; this repo only provides reusable AI assets that can be stowed into the home directory.

## Layout

- `general/` installs shared assets under `~/.agents/` for tools that support the Agent Skills layout.
- `opencode/` installs opencode-specific assets under `~/.config/opencode/`.

## Install

Run:

```bash
./stow.sh
```

The script uses GNU Stow with `--no-folding` so `~/.agents` and `~/.config/opencode` remain real merge directories, allowing this repo and `ai-private` to coexist without one repo owning the whole parent directory.

No commits or pushes are performed by the script.
