#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public

echo "Generating site..."
hugo


echo "Updating gh-pages branch"
cd public
git config --global user.name "KBL Bumigora"
git config --global user.email kbl.bumigora@gmail.com
git init
git add --all
git commit -m "Build from Travis CI"
git push --force "https://${GITHUB_TOKEN}@github.com/kblbumigora/website.git" master:gh-pages > /dev/null 2>&1