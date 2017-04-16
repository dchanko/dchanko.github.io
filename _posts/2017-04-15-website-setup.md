---
layout: post
title: Website Setup
date: 2017-04-15
categories: website
---

Setting up a website like this is not hard at all, here are some notes for future reference and maintenance.

## GitHub Pages

[GitHub Pages](https://pages.github.com) provides an excellent guide for getting started. This will walk you through creating a website for yourself in a new GitHub repository of the form *[GitHub User Name].github.io*. The URL of the website will be the same.  It is possible to use a custom domain name, though this did not seem worth it at this point. The repository must have that format for things to work correctly.  

## Jekyll

After the website is created, setting up [Jekyll](https://jekyllrb.com) is almost as easy (everything is on the main page in a few lines at the time of writing).  

### Configuration

File *_config.yml* holds settings for the name of your site, a descirption, contact information, and build settings.  This is where the theme can be set, though I stuck with the default *minima* theme. Themes supported by GitHub can be found [here](https://pages.github.com/themes/).

### About Page

Jekyll will give you an *About* page to get you started. Located in the root directory, this can be updated with a more detailed description of what your site is... well, about.

### Posts

Posts go in the *_posts* directory.  There is an example in there to get things started. The file naming convention of *YYYY-MM-DD-title.md* is important.

## Review and Commit

Running locally is a breeze with `bundle exec jekyll serve` to preview the changes.  As you edit, your changes will be picked up automatically.  After getting things setup, checking in, and pushing to GitHub, your site will be automatically updated. 
