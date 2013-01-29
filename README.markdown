Setup
=====

This is my collection of dotfiles which I use to make my everyday life easier.

Installing
----------

``` bash
$ rake install
```

Will create symlinks in the current users `$HOME` directory to all zsh and vim files.

To install the plugins and bundles that is used open Vim and run the following commands.

``` bash
:BundleInstall
```

Extra for zshell users
----------------------

If a `.zshlocal` file is found in `$HOME` it will be included aswell. It makes it easy
to have different `PATH`'s defined per computer.
