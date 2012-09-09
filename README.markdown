~/.HenrikBjornskov
==================

This is my collection of dotfiles which I use to make my everyday life easier.

Installing
----------

There is several ways to install theese. You can create all the symlinks your self and manage it that way. Or do it
the easier way with the rake tasks.

``` sh
$ rake -T
rake bundles     # Install/Update Vim Bundles
rake install     # Install
rake submodules  # Update submodules
rake symlinks    # Create symlinks
```

The install command does all of the above.

``` sh
$ rake install
```

It is safe to run the commands more than once. If a symlink or folder already exists the command will be skipped.

Updating
--------

To update vim bundles add a entry to `Bundlefile` where the first word will be the directory name and the second will be the git url.
This allows to have a clean structure in `vim/bundle` instead of the inconsistent naming.

After adding or deleting a entry run `rake bundles`. It will go through all the entries and update their contents and afterwards
delete all folders that are not found.
