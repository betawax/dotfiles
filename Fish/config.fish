#
# Fish
#

# Set the current locale
set -gx LANG en_US.UTF-8

# Disable the greeting message
set -U fish_greeting

# Use ANSI colors from terminal
source ~/.config/fish/colors.fish

#
# $PATH
#

# Add directories to $PATH
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path ~/.composer/vendor/bin

#
# Aliases
#

# Use some GNU utilities
alias grep 'ggrep --color'
alias ls 'gls --color --group-directories-first --human-readable'
alias sed 'gsed'

# Define command aliases
alias artisan 'php artisan'
alias subl 'subl --new-window'

#
# Abbreviations
#

if status is-interactive

  # Define command abbreviations
  abbr -ag brup 'brew update && brew upgrade && brew cleanup'
  abbr -ag dc 'docker compose'
  abbr -ag dump 'composer dump-autoload'
  abbr -ag resetlp 'defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

end
