# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="betawax"

# Aliases
alias subl="subl --new-window"
alias artisan="php artisan"
alias composer="hhvm /usr/local/bin/composer"
alias dump="composer dump-autoload && artisan dump-autoload"
alias vup="vagrant up"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/sbin:$PATH

# PHP
#export PATH=$(brew --prefix php55)/bin:$PATH

# Ruby
export PATH=$(brew --prefix ruby)/bin:$PATH
