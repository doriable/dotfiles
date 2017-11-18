# Dotfile repository

## Introduction
This is a backup of my dotfiles. Changes to this repository are made programmatically using the following scripts:
+ `backup.sh`: scans this repo, given the existing files, pulls from my `$HOME` and copies them here

## Upcoming
+ `sync.sh`: updates your `$HOME` to match the files in this directory
+ `add.sh`: given a file name, looks `$HOME` for the file and copies them here. If a file is already in this repo, then it will ask the user if they would like to replace the file

## Credits
Scripts used in this repository:
+ [Git Prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)

## Inspiration
Inspired by the following:
+ [Mathias's Dotfiles](https://github.com/mathiasbynens/dotfiles)
+ [Base16 Vim](https://github.com/chriskempson/base16-vim)
+ [JCorbin's Home](https://github.com/jcorbin/home)
