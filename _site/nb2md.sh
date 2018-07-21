 #!/usr/bin/env bash

jupyter nbconvert $1 --to markdown

filename=$(basename -- "$1")
filename="${filename%.*}"
filepath=$(dirname "$1")
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mdfilepath=$filepath/$filename.md

assetspath=$DIR/assets/
foldername="$filename"_files

rm -rf $assetspath$foldername
mv -f $filepath/$foldername $assetspath/$foldername 

sed -i -e "s/$foldername/\/assets\/$foldername/g" $mdfilepath 


