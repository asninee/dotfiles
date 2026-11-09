# dotfiles

where I store all my dotfiles :)

## setup

```sh
./link.sh                              # symlink configs into place
brew bundle --file=~/Brewfile          # install packages and apps
mise install                           # install runtimes
```

The live configs are symlinks into this repo, so edits made anywhere show up in `git status` here.
