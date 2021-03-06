#!/bin/sh

set -x

DIR=$(dirname "$0")

set -x

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public

git add .
git commit -m "Publishing to master"
git push origin master

if [[ $(git status -s) ]]
then
	echo "The working directory is dirty. Please commit any pending changes."
	exit 1;
fi

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing exisiting files"
rm -rf public/*

echo "Generating site"
hugo -v

echo "Updating gh-pages branch"
cd public && git add . && git commit -m "Publishing to gh-pages" && git push origin gh-pages
cd .. && rm -rf public
