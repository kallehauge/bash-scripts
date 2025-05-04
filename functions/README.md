# Overview

## `gcbo <branch>`

**Abbreviation for**: `git checkout -B <branch> origin/<branch>`

It's a wrapper (and alias) for `git checkout -B "$branch" "origin/$branch"` since I got tired of writing the branch name twice.

**Warning!** There are some hardcoded assumptions inside, so scan it first.


## `gbda`

**Abbreviation for**: `git branch -D` "all".

**Warning: After some initial feedback, then some shells will ignore the intended iterator prompt and just delete each branch.** Please check out this project instead if you're interested in this function: [https://github.com/kallehauge/terminal-commands](https://github.com/kallehauge/terminal-commands). It's written in C# instead to move the responsibility away from the "local shell language".

It will iterate through all your local branches, individually, and ask you if you wish to delete it.

I often forget to delete local branch, and this has just proven to be the easiest way for me to purge since I'll sometimes have local branches I don't want to get rid off (read: I don't want to automatically delete branch that doesn't exist on the remote server).
