Setup
=====

This is my dotfiles which is symlinked using homesick.

Installing
----------

``` bash
$ homesick clone henrikbjorn/setup
$ homesick symlink setup
```

To install the plugins and bundles that is used open Vim and run the following commands.

``` bash
:BundleInstall
```

Extra for zshell users
----------------------

If a `.zshlocal` file is found in `$HOME` it will be included aswell. It makes it easy
to have different `PATH`'s defined per computer.
