# Vim Syntax File for Cpptraj

This repository contains the files necessary for syntax highlighting 
of `cpptraj` input files.
`vim` will look for `*.in` files as use this syntax on them accordingly -- this
can be changed in `ftdetect/cpptraj.vim`.

## Installation
If you unpack this in your `~/.vim` folder, you should be golden.

This `~/.vim` folder should look like this (at a minimum):
```
.
├── ftdetect
│   └── cpptraj.vim
└── syntax
    └── cpptraj.vim

2 directories, 2 files
```

## syntax
This is where the actual rules for matches and keywords are contained.

## ftdetect
This is where the file type autodetection rules are contained.

## TODO:
Add all keywords and more robust highlighting.
