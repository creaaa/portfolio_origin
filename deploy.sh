#!/usr/bin/env sh

# mdファイル(オリジン)をリモートプッシュ
git push origin master

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd .vuepress/dist

echo 'creanote.tokyo' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:creaaa.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:creaaa/grimoire.git master
cd -
