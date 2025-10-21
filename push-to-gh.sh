#!/bin/sh
if [ -z "$1" ]
then
  echo "Error: push-to-gh.sh requires the directory to publish to GH as an argument"
  echo "Example: ./push-to-gh.sh out/ (Pushes the out/ directory to the gh-pages branch?"
  exit 1
fi
git subtree push --prefix $1 origin gh-pages
