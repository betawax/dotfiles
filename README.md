# ~/.dotfiles

My config files for development on macOS.

## Environment

### 🚀 Command Line

- macOS Terminal
- Zsh + Oh My Zsh
- GNU utilities
- Homebrew

### 🚀 macOS Apps

- [Sublime Text 4](https://www.sublimetext.com/) + [Package Control](https://packagecontrol.io/)
- [Tower](https://www.git-tower.com/) + [Kaleidoscope](https://kaleidoscope.app/)

## Installation

Clone this repository to `~/.dotfiles` and run `rake install`:

```
git clone git@github.com:betawax/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```

This will link all config files specified in `symlinks.json` relative to the home directory of the current user. If a file already exists, a backup is created.

### Homebrew Packages

Install required Homebrew packages:

```
brew install coreutils gnu-sed grep
```

### Terminal Profile

Double tap the terminal profile to install it.

## License

Licensed under the MIT license.
