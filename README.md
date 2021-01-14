# Vim Syntax File for Cpptraj

This repository contains the files necessary for syntax highlighting
of `cpptraj` input files.
`vim` will look for `*.in` files as use this syntax on them accordingly -- this
can be changed in `ftdetect/cpptraj.vim`.

## Example
<img src="https://raw.github.com/emleddin/vim-cpptraj/main/vim-ex.png?raw=true" alt="Sample cpptraj syntax highlighting for vim" width="500"/>


## Installation
If you clone this into your `~/.vim` folder, you should be golden.

This `~/.vim` folder should look like this (at a minimum):
```
.
├── ftdetect
│   └── cpptraj.vim
└── syntax
    └── cpptraj.vim

2 directories, 2 files
```

Otherwise, you can use these commands, in an internet-connected Terminal:
```bash
$ cd ~/.vim
$ mkdir ftdetect
$ mkdir syntax
$ cd ftdetect
$ wget "https://raw.githubusercontent.com/emleddin/vim-cpptraj/main/ftdetect/cpptraj.vim"
$ cd ../syntax
$ wget "https://raw.githubusercontent.com/emleddin/vim-cpptraj/main/syntax/cpptraj.vim"
```

### syntax
This is where the actual rules for matches and keywords are contained.

### ftdetect
This is where the file type autodetection rules are contained.

## Not Working? Check These First

If you have `vim` installed but don't see normally colors, even in shell
scripts, you may have to enable syntax highlighting by creating a `~/.vimrc`
file that contains `syntax on`.

The `ftdetect/cpptraj.vim` file specifies that files with a `*.in` extension
are should use the `cpptraj` syntax.
If you typically name your `cpptraj` files with something like `.traj`, you
can modify this behavior by editing your `ftdetect/cpptraj.vim` to:
```
au BufRead,BufNewFile *.traj set filetype=cpptraj
```

## TODO:
- More conditional highlighting (after this keyword, expect this)
- Verify `read`, `write`, `dataset`,  and `change` commands have what they should
- Check for unintended duplicates (outtraj and pairdist?)
