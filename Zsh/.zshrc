# Zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="betawax"
source $ZSH/oh-my-zsh.sh

# Aliases
alias subl="subl --new-window"
alias artisan="php artisan"
alias dump="composer dump-autoload"
alias ls="gls -h --color --group-directories-first"
alias resetlp="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/sbin:~/.composer/vendor/bin:$PATH

# Homebrew
#export PATH=$(brew --prefix php55)/bin:$PATH
#export PATH=$(brew --prefix ruby)/bin:$PATH
