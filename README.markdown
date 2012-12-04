Setup
=====

This is my collection of dotfiles which I use to make my everyday life easier.

Installing
----------

``` bash
$ gem install vim-flavor
$ cd $SETUP_DIR
$ vim-flavor install
$ rake install
```

Will create symlinks in the current users `$HOME` directory to all zsh and vim files.

Extra for zshell users
----------------------

If a `.zshlocal` file is found in `$HOME` it will be included aswell. It makes it easy
to have different `PATH`'s defined per computer.
