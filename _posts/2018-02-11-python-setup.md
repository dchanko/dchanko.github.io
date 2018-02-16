---
layout: post
title: Python Development Setup
date: 2018-02-15
categories: python
---

Setting up an OS X development environment for Python.

## Anaconda

[Anaconda](https://www.anaconda.com/download/#macos) provides a basic Python installation.

## IDE

Install the Python plug-in for VS Code.

## Basic Packages

### virtualenv

```bash
$ sudo pip install virtualenv
```

The virtualenv package allows you to keep separate dependencies by project to avoid pollution and avoid version conflicts.

### virtualenvwrapper

```bash
$ sudo pip install virtualenvwrapper
```

The **virtualenvwrapper** package provides some helper commands for **virtualenv**.

It facilitates the creating and loading of project/environment pairs and can be customized by exporting the following environment variables in your **~/.profile** file:

```
export PROJECT_HOME=$HOME/programming/python/dev
export WORKON_HOME=~/programming/python/.virtualenvs
```

**PROJECT_HOME** is where your project source code will reside.

**WORKON_HOME** is where the virutal environment for your project will reside.

Add the following line as well to make the helper commands available:

```
source "/Users/chanko/anaconda3/bin/virtualenvwrapper.sh"
```

The basic **virtualenvwrapper** commands are as follows.  When creating a virtual environment for a project, from that project's source folder:

```bash
$ mkvirtualenv <name> 
$ setvirtualenvproject
$ workon <name>
$ deactivate
```

Or if you are starting fresh with a new project:

```bash
mkproject <name> 
```

This will take full advantage of **PROJECT_HOME** and **WORKON_HOME**.


