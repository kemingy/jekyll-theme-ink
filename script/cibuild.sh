#!/bin/sh

set -e

echo "Building site..."
bundle exec jekyll build 

if test -e "./_site/index.html";then
    echo "Done!"
    rm -rf _site
else
    echo "Something is wrong. Please check it."
    exit 1
fi

touch ./_site/.nojekyll
