#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

build_website() {
  hugo
}

commit_website_files() {
  git checkout -b gh-pages
  git add .
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