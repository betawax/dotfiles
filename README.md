# ~/.dotfiles

![](screenshot.png)

## Installation

```
git clone git@github.com:betawax/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```

This will link all config files specified in `symlinks.json` relative to the home directory of the current user. If a file already exists, a backup is created. See the `Rakefile` for what is actually happen.

## Homebrew Packages

```
brew install coreutils gnu-sed grep
brew install composer node php ruby
```

## Composer Packages

```
composer global require laravel/envoy laravel/installer phpunit/phpunit
```
