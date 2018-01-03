#!/bin/sh

setup_git() {
  git config --global user.email "kbl.bumigora@gmail.com"
  git config --global user.name "KBL Bumigora"
}

build_website() {
  echo "Deleting old publication"
  rm -rf public
  mkdir public
  git worktree prune
  rm -rf .git/worktrees/public/

  echo "Checking out gh-pages branch into public"
  git worktree add -B gh-pages public origin/gh-pages

  echo "Removing existing files"
  rm -rf public/*

  echo "Generating site..."
  hugo
  cd public
}

commit_website_files() {
  #git checkout -b gh-pages
  git add --all
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GITHUB_TOKEN}@github.com/kblbumigora/website.git > /dev/null 2>&1
  git push --force --set-upstream origin-pages gh-pages 
}

setup_git
build_website
commit_website_files
upload_files