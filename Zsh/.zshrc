# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$HOME/.composer/vendor/bin:$PATH

# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="betawax"
plugins=(docker docker-compose)
source $ZSH/oh-my-zsh.sh

# Aliases
alias artisan="php artisan"
alias dump="composer dump-autoload"
alias git="LANG=en_US.UTF-8 git"
alias ls="gls --color --group-directories-first --human-readable"
alias sed="gsed"
alias subl="subl --new-window"

# Shortcuts
alias brup="brew update && brew upgrade && brew cleanup"
alias resetlp="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# Access Tokens
if [ -f ~/.dotfiles/access_tokens ]; then
  source ~/.dotfiles/access_tokens
fi
