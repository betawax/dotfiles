# oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Zsh theme
ZSH_THEME="betawax"

# Aliases
alias artisan="php artisan"
alias phpunit="php vendor/bin/phpunit"
alias composer="hhvm /usr/local/bin/composer"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# PHP version
#export PATH=$(brew --prefix php55)/bin:$PATH
