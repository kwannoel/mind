#!/bin/sh
set -euo pipefail

# Generate pages
mkdir _site
neuron rib -o _site

# Initiate deploy environment
mkdir .deploy
cd .deploy
git init
git remote add origin git@github.com:kwannoel/mind.git
git pull -r origin site

# Sync the site updated pages
rsync -a ../_site/ .

# Commit the sync
git add .
read -p 'Enter commit message: ' commitMsg
git commit -m "$commitMsg"
git push origin site

# Cleanup
cd ..
rm -rf _site
rm -rf .deploy
