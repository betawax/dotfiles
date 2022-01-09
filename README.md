# ~/.dotfiles

My config files for development on macOS.

## Environment

### 🚀 Command Line

- [Fish Shell](https://fishshell.com/)
- [Homebrew](https://brew.sh/)
- [GNU Utilities](https://www.gnu.org/software/coreutils/)
- [macOS Terminal](https://support.apple.com/guide/terminal/welcome/mac)

### 🚀 macOS Apps

- [Sublime Text 4](https://www.sublimetext.com/)
- [Package Control](https://packagecontrol.io/)
- [Kaleidoscope](https://kaleidoscope.app/)
- [Tower](https://www.git-tower.com/)

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

### Fish Shell

Install Fish and make it the default shell:

```
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

### Terminal Profile

Open the terminal profile to install it:

```
open ~/.dotfiles/Terminal/betawax.terminal
```

## License

Licensed under the MIT license.
