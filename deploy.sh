#!/bin/sh
set -euo pipefail

# Generate pages
neuron rib

# Initiate deploy environment
mkdir .deploy
cd .deploy
git init
git remote add origin git@github.com:kwannoel/mind.git
git checkout --track -b gh-pages
git pull -r origin gh-pages # First deployment: comment out this line

# Sync the site updated pages
rsync -a ../.neuron/output/ .
rm README.html

# Commit the sync
git add .
git commit -m "Publish"
git push origin gh-pages

# Cleanup
cd ..
rm -rf .neuron
rm -rf .deploy
