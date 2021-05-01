# ~/.dotfiles

## Installation

```
git clone git@github.com:betawax/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```

This will link all config files specified in `symlinks.json` relative to the home directory of the current user. If a file already exists, a backup is created.

## Homebrew Packages

```
brew install coreutils gnu-sed grep
brew install node php ruby
```
