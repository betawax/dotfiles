# My config files

The config files I use on my system.

## Installation

	git clone git@github.com:betawax/dotfiles.git ~/.dotfiles
	cd ~/.dotfiles
	rake install

This will link all config files specified in `Symlinks.json` relative to the home directory of the current user. If a file already exists, a backup is created. See the `Rakefile` for what is actually happen.
