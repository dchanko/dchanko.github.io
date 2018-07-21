git merge --no-commit gh-pages

mv ./_site/* .

rm -rf ./_*
rm ./Gem*
rm ./*.md
rm ./*.yml

git add -A

git status

