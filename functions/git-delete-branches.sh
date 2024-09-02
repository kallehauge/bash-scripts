#!/usr/bin/env bash

gbda() {
    # Early check to confirm script execution
    echo -n "This script will delete local branches. Are you sure you want to continue? (y/n): "
    read confirm
    case "$confirm" in
        y|Y ) ;;
        * ) echo "Script aborted."; return 0;;
    esac

    # Check if we're in a git repository
    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        echo "Error: Not in a git repository. Please run this script from within a git repository."
        return 1
    fi

    # Get current branch
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Get all branches
    branches=($(git for-each-ref --format '%(refname:short)' refs/heads/))

    # Delete branches with prompts
    for branch in "${branches[@]}"; do
        if [ "$branch" != "$current_branch" ]; then
            echo -n "Do you want to delete branch '$branch'? (y/n): "
            read choice
            case "$choice" in
                y|Y )
                    git branch -D "$branch";;
                * ) echo "Skipped";;
            esac
        fi
    done

    echo "Branch deletion process completed."
}
