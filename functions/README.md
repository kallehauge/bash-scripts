# Overview

## gbda

**Abbreviation for**: `git branch -D "all"`.

It will iterate through all your local branches, individually, and ask you if you wish to delete it.

I often forget to delete local branch, and this has just proven to be the easiest way for me to purge since I'll sometimes have local branches I don't want to get rid off (read: I don't want to automatically delete branch that doesn't exist on the remote server).

## `gcbo`

**Abbreviation for**: `git checkout -b "$branch" "origin/$branch"`

It's a wrapper (and alias) for `git checkout -b "$branch" "origin/$branch"` since I've found it the most reliable way of checkount out remote branches, but I also got tired of writing the branch name twice.

[https://andrekh.com/blog/cursor-editor-helped-me-fix-a-git-script-after-10-years/](https://andrekh.com/blog/cursor-editor-helped-me-fix-a-git-script-after-10-years/)

**Warning!** There are some hardcoded assumptions inside, so scan it first.
