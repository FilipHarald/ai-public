---
description: Commit and push all repository changes
---

Commit and push all current changes in the active Git repository.

Inspect the complete working tree, including staged, unstaged, and untracked files, before acting. Understand the changes well enough to group them into coherent commits with concise, appropriate commit messages. Use multiple commits when the work contains independently meaningful changes, and include all current changes unless the user explicitly excludes something.

Before committing, run the repository's relevant formatting, linting, type-checking, and tests when practical. Never bypass hooks, discard changes, rewrite existing commits, force-push, or expose secrets. If checks fail, fix failures caused by the changes when safely possible; otherwise stop and explain the blocker.

If the changes are broad enough that they likely belong in two or more separate pull requests, do not commit yet. Ask the user how they want the work split. Ordinary changes that merely need multiple commits do not require confirmation.

Push the current branch to its configured remote after committing, setting the upstream when needed. Report the commits created, checks run, and push destination.

Additional user guidance: $ARGUMENTS
