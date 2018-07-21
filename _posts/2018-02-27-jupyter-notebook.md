---
layout: post
title: Jupyter Notebook Setup
date: 2018-02-27
categories: python
---

Using Jupyter Notebook.

## Anaconda

[Jupyter Notebook](https://jupyter.org) is included in the [Anaconda](https://www.anaconda.com/download/#macos) installation.

## Running

In a new terminal window, run:

```bash
$ jupyter notebook
```

This will start a webserver serving up Jupyter Notebook.  The files displayed will be relative to the current directory.

## With Jekyll 

Many thanks to Brian Caffey {% cite jekyll-jupyter %} for his post used to get things started here and the basic example. Full details of this method are availble at the link but a summary is provided here with some additional information.

In the same directory as your markdown file for your blog post, start up your Juyper notebook and create a file. After things are done the way you like, save and then convert the notebook to markdown:

```bash
jupyter nbconvert <your_file>.ipynb --to markdown
```

This will create a markdown file for the notebook and a subfolder containing any images.

If you open the markdown file, you can copy the text into your post’s markdown, however when you build the Jekyll site the paths to the images and other assets will break.  The following script can be used to convert the .ipynb file, rearrage the assets folder appropriately, and change the paths in the generated markdown files so they will work when run with Jekyll.

```bash
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
```

Drop that into the root directory of your Jekyll site (e.g. nb2md.sh) and run with

```bash
./nb2md.sh ./_posts/Sample.ipynb
```

to create a markdown file that can be copied directly into your Jekyll file.  Sample result as displayed in Jekyll:


```python
import matplotlib.pyplot as plt

%matplotlib inline

x = [1,2,3,4,5]
y = [5,4,3,2,1]

plt.plot(x,y)
```

    [<matplotlib.lines.Line2D at 0x112661dd8>]

![png](/assets/Sample_files/Sample_0_1.png)

References 
----------

{% bibliography --cited %}
