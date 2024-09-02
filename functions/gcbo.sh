#!/bin/bash

# Function to checkout a new branch from origin.
#
# Example usage: gcbo my-feature-branch
gcbo() {
  if [ $# -ne 1 ]; then
    echo "Usage: gcbo <branch_name>"
    return 1
  fi

  # Check if git is initialized
  if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Error: Not a git repository. Please initialize git first."
    return 1
  fi

  # Check for uncommitted changes
  if ! git diff-index --quiet HEAD --; then
    echo "Error: You have uncommitted changes. Please commit or stash them first."
    return 1
  fi

  local branch=$1
  local current_branch=$(git rev-parse --abbrev-ref HEAD)

  # Check if trunk branch exists
  if ! git show-ref --verify --quiet refs/heads/trunk; then
    echo "Error: 'trunk' branch does not exist. Please create it first."
    return 1
  fi

  # If currently on the branch to be checked out, switch to trunk first
  if [ "$current_branch" = "$branch" ]; then
    echo "Currently on '$branch'. Switching to trunk first..."
    git checkout trunk
  fi

  # Check if the branch exists locally
  if git show-ref --verify --quiet refs/heads/"$branch"; then
    echo "Branch '$branch' already exists locally. Deleting it..."
    git branch -D "$branch"
  fi

  # Fetch the latest remote branches and tags
  git fetch -a

  # Checkout the branch from origin
  git checkout -b "$branch" "origin/$branch"
}
