#!/bin/bash

# Function to hard-refresh a local branch from origin.
#
# Usage: gcbo <my-feature-branch>
gcbo() {
  if [ $# -ne 1 ]; then
    echo "Usage: gcbo <my-feature-branch>"
    return 1
  fi

  if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Error: Not a git repository."
    return 1
  fi

  if ! git diff-index --quiet HEAD --; then
    echo "Error: Uncommitted changes found. Please commit or stash them."
    return 1
  fi

  local branch=$1

  git fetch origin || return 1
  git checkout -B "$branch" "origin/$branch"
}
