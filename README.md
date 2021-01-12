# Vim Syntax File for Cpptraj

This repository contains the files necessary for syntax highlighting
of `cpptraj` input files.
`vim` will look for `*.in` files as use this syntax on them accordingly -- this
can be changed in `ftdetect/cpptraj.vim`.

## Example
<img src="https://raw.github.com/emleddin/vim-cpptraj/main/vim-ex.png?raw=true" alt="Sample cpptraj syntax highlighting for vim" width="500"/>


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

### syntax
This is where the actual rules for matches and keywords are contained.

### ftdetect
This is where the file type autodetection rules are contained.

## TODO:
- More conditional highlighting (after this keyword, expect this)
- Verify `read`, `write`, `dataset`,  and `change` commands have what they should
- Check for unintended duplicates (outtraj and pairdist?)
